import 'dart:developer';

import 'package:cred/core/app_textstyles.dart';
import 'package:cred/data/data.dart';
import 'package:cred/sheets/second_bottom_sheet.dart';
import 'package:cred/widgets/payment_plan_tile.dart';
import 'package:flutter/material.dart';

class FirstBottomSheet extends StatefulWidget {
  const FirstBottomSheet({super.key});

  @override
  State<FirstBottomSheet> createState() => _FirstBottomSheetState();
}

class _FirstBottomSheetState extends State<FirstBottomSheet> {
  //
  bool isSecondSheetExpanded = false;

  void showSecondBottomSheet(BuildContext context) async {
    setState(() => isSecondSheetExpanded = true);
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      barrierColor: Colors.black26,
      builder: (context) => const SecondBottomSheet(),
    ).whenComplete(() {
      setState(() => isSecondSheetExpanded = false);
      log('CLOSED SECOND SHEET');
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        /// `Wrapper`
        Container(
          height: size.height * 0.65,
          decoration: const BoxDecoration(
            color: Color(0xff13181f),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),

          /// `Body`
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// `Title & Subtitle`
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                child: headingText(),
              ),

              /// `Payment Plan Selector Tiles`
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: AppData.paymentPlans
                        .map((each) => PaymentPlanTile(each))
                        .toList(),
                  ),
                ),
              ),

              /// `Create plan button`
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Create your own plan'),
                ),
              ),
              const Spacer(),

              /// `Bottom Proceed Button`
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => showSecondBottomSheet(context),
                  child: const Text('Select your bank account'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget headingText() {
    if (isSecondSheetExpanded) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'EMI',
                style: AppTextStyles.caption,
              ),
              SizedBox(height: 5),
              Text(
                '₹4,247 /mo',
                style: AppTextStyles.heading,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'duration',
                style: AppTextStyles.caption,
              ),
              SizedBox(height: 5),
              Text(
                '12 months',
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
            'how do you wish to repay?',
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 12),
          Text(
            'choose one of our recommended plans or make your\nown',
            style: AppTextStyles.caption,
          ),
        ],
      );
    }
  }
}
