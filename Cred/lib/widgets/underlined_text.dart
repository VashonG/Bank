import 'package:flutter/material.dart';

class UnderlinedText extends StatelessWidget {
  const UnderlinedText(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.grey.withOpacity(0.15),
          child: Text(
            label,
            style: const TextStyle(
              fontFamily: 'GilRoy',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Positioned(
          bottom: -6,
          child: Text(
            '-------------------------',
            style: TextStyle(
              color: Colors.black87,
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
