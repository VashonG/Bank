import 'package:cred/widgets/toggle_selector.dart';
import 'package:flutter/material.dart';

class PaymentPlanTile extends StatelessWidget {
  const PaymentPlanTile(this.mapData, {super.key});

  final Map<String, dynamic> mapData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 160,
            height: 175,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: mapData['tileColor'],
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// `Toggle Select Button`
                ToggleSelector(
                  color: mapData['tileColor'],
                  isSelected: mapData['isSelected'],
                  ontap: () {},
                ),
                const SizedBox(height: 15),

                /// `Price per month`
                RichText(
                  text: TextSpan(
                    text: '₹',
                    style: const TextStyle(
                      fontFamily: 'GilRoy',
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: mapData['price'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' /mo',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),

                /// `Month`
                const SizedBox(height: 3),
                Text(
                  'for ${mapData['months']} months',
                  style: TextStyle(
                    fontFamily: 'GilRoy',
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                /// `See Calculation`
                const Spacer(),
                seeCalculationButton(),
              ],
            ),
          ),

          // ------------------------- RECOMMENDED CHIP
          if (mapData['isRecommended'])
            Positioned(
              top: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(15, 3.5, 15, 3.5),
                  child: Text(
                    'recommended',
                    style: TextStyle(
                      fontFamily: 'GilRoy',
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget seeCalculationButton() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(
            'See calculations',
            style: TextStyle(
              fontFamily: 'GilRoy',
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ),
        const Positioned(
          bottom: -6,
          child: Text(
            '-------------------------',
            style: TextStyle(
              color: Colors.white24,
              fontSize: 11,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
