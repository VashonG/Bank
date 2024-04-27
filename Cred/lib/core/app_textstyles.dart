import 'package:cred/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const heading = TextStyle(
    fontSize: 20,
    color: AppColors.blueGrey,
    fontFamily: 'GilRoy',
    fontWeight: FontWeight.w600,
  );

  static const caption = TextStyle(
    height: 1.3,
    color: AppColors.blueGrey2,
    fontFamily: 'GilRoy',
    fontSize: 13,
  );
}
