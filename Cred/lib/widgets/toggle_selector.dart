import 'package:cred/core/app_colors.dart';
import 'package:flutter/material.dart';

class ToggleSelector extends StatelessWidget {
  const ToggleSelector({
    required this.color,
    required this.isSelected,
    required this.ontap,
    Key? key,
  }) : super(key: key);

  final VoidCallback ontap;
  final bool isSelected;
  final Color color;

  Color darkenColor(double darknessFactor) {
    final alpha = color.alpha;
    final red = (color.red * (1.0 - darknessFactor)).round();
    final green = (color.green * (1.0 - darknessFactor)).round();
    final blue = (color.blue * (1.0 - darknessFactor)).round();

    return Color.fromARGB(alpha, red, green, blue);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: 38,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? darkenColor(0.1) : null,
          border:
              isSelected ? null : Border.all(width: 0.5, color: Colors.white60),
        ),
        child: Center(
          child: IconButton(
            iconSize: 23,
            icon: Icon(
              isSelected ? Icons.check_rounded : null,
              color: AppColors.mildOrange,
            ),
            onPressed: ontap,
            splashColor: color,
          ),
        ),
      ),
    );
  }
}
