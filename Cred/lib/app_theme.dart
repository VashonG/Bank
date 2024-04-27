import 'package:cred/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'GilRoy',
    iconTheme: const IconThemeData(color: Colors.white),

    /// ---------------------------------- `TIELS`
    listTileTheme: ListTileThemeData(
      contentPadding: EdgeInsets.zero,
      titleTextStyle: const TextStyle(
        fontFamily: 'GilRoy',
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: 15,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: 'GilRoy',
        color: AppColors.blueGrey.withOpacity(0.7),
      ),
    ),

    /// ---------------------------------- `BUTTONS`
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.blueGrey,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        side: const BorderSide(width: 0.7, color: AppColors.blueGrey),
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(25),
        backgroundColor: const Color(0xff374599),
        foregroundColor: AppColors.mildOrange,
        disabledForegroundColor: AppColors.mildOrange.withOpacity(0.7),
        disabledBackgroundColor: const Color(0xff262f59),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        textStyle: const TextStyle(
          fontFamily: 'GilRoy',
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
