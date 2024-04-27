import 'package:cred/core/app_colors.dart';

class AppData {
  static const paymentPlans = [
    {
      'price': '4,247',
      'months': 12,
      'isSelected': true,
      'isRecommended': false,
      'tileColor': AppColors.planColor1,
    },
    {
      'price': '5,580',
      'months': 9,
      'isSelected': false,
      'isRecommended': true,
      'tileColor': AppColors.planColor2,
    },
    {
      'price': '8,270',
      'months': 6,
      'isSelected': false,
      'isRecommended': false,
      'tileColor': AppColors.planColor3,
    },
  ];
}
