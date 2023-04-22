import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_care/app/data/constants/app_colors.dart';
import 'package:pet_care/app/data/constants/app_typography.dart';

class MyColorTiles extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  const MyColorTiles({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      height: 100.h,
      width: 100.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.kGreyColor.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 6),
          ),
        ],
        borderRadius: BorderRadius.circular(20.r),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: AppTypography.kBold18,
          ),
          Text(
            subtitle,
            style: AppTypography.kBold10.copyWith(color: AppColors.kGreyColor),
          ),
        ],
      ),
    );
  }
}
