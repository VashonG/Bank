import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(this.icon, {super.key});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: const Color(0xFF262F35),
        borderRadius: BorderRadius.circular(100),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Icon(
            size: 20,
            icon,
            color: const Color(0xff959ba0),
          ),
        ),
      ),
    );
  }
}
