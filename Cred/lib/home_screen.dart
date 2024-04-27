import 'dart:developer';

import 'package:cred/core/app_textstyles.dart';
import 'package:cred/sheets/first_bottom_sheet.dart';
import 'package:cred/widgets/custom_icon_button.dart';
import 'package:cred/widgets/pricing_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //
  bool isFirstSheetExpanded = false;

  void showFirstBottomSheet(BuildContext context) async {
    setState(() => isFirstSheetExpanded = true);
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      barrierColor: Colors.black26,
      builder: (context) => const FirstBottomSheet(),
    ).whenComplete(() {
      log('CLOSED FIRST SHEET');
      setState(() => isFirstSheetExpanded = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff0f151a),
        body: Column(
          children: [
            /// -------------- `Top Icons`
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CustomIconButton(Icons.close_rounded),
                  Spacer(),
                  CustomIconButton(Icons.question_mark),
                ],
              ),
            ),

            // My mobile was longer than that of image, so had to give the spacing.
            const SizedBox(height: 100),

            /// -------------- `Body`
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff13181f),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                // Body
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Title & Subtitle
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: headingText(),
                    ),

                    // Price Range
                    const Padding(
                      padding: EdgeInsets.all(30),
                      child: PricingCard(),
                    ),

                    const Spacer(),
                    ElevatedButton(
                      onPressed: () => showFirstBottomSheet(context),
                      child: const Text('Proceed to EMI selection'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget headingText() {
    if (isFirstSheetExpanded) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'credit amount',
                style: AppTextStyles.caption,
              ),
              SizedBox(height: 5),
              Text(
                '₹1,50,000',
                style: AppTextStyles.heading,
              ),
            ],
          ),
          Icon(Icons.keyboard_arrow_down_rounded),
        ],
      );
    } else {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'nikunj, how much do you need?',
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 12),
          Text(
            'move the dial and set any amount you need upto ₹\n487,891',
            style: AppTextStyles.caption,
          ),
        ],
      );
    }
  }
}
