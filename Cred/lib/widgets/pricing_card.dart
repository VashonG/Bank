import 'package:cred/widgets/underlined_text.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

class PricingCard extends StatelessWidget {
  const PricingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 50, 60, 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: const Column(
        children: [
          DashedCircularProgressBar.aspectRatio(
            aspectRatio: 1,
            progress: 30,
            animation: true,
            backgroundColor: Color(0xffffe7da),
            foregroundColor: Color(0xffd88969),
            seekSize: 40,
            seekColor: Color(0xffffc8ba),
            foregroundStrokeWidth: 15,
            corners: StrokeCap.square,
            backgroundStrokeWidth: 15,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'credit amount',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black45,
                      fontFamily: 'GilRoy',
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '₹',
                        style: TextStyle(
                          height: 1.5,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 1),
                      UnderlinedText('1,50,000'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '@1.04% monthly',
                    style: TextStyle(
                      fontFamily: 'GilRoy',
                      color: Colors.green,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Text(
            'stash is instant. money will be creadited within seconds.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black45,
              fontFamily: 'GilRoy',
              height: 1.3,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
