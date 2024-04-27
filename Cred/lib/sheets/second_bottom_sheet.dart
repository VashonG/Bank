import 'package:cred/core/app_colors.dart';
import 'package:cred/core/app_textstyles.dart';
import 'package:flutter/material.dart';

class SecondBottomSheet extends StatelessWidget {
  const SecondBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        /// `Wrapper`
        Container(
          height: size.height * 0.55,
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
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'where should we send the money?',
                      style: AppTextStyles.heading,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'amount will be credited to this bank account, EMI will\nalso be debited from this bank account',
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
              ),

              /// `Payment Bank Tile`
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: ListTile(
                  leading: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/paytm.png'),
                    ),
                  ),
                  title: const Text('Paytm Payments Bank'),
                  subtitle: const Text('919935670475'),
                  trailing: CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColors.blueGrey2.withOpacity(0.3),
                  ),
                ),
              ),

              /// `Change Account Tile`
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Change account'),
                ),
              ),
              const Spacer(),

              /// `Bottom KYC Button`
              const SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('Tap for 1-click KYC'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
