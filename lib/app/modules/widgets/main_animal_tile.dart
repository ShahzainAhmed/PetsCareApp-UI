import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_care/app/data/constants/app_assets.dart';
import 'package:pet_care/app/data/constants/app_colors.dart';
import 'package:pet_care/app/data/constants/app_typography.dart';

class MyMainAnimalTile extends StatelessWidget {
  final String dogName;
  final String image;
  const MyMainAnimalTile(
      {super.key, required this.dogName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 200.w,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.kGreyColor.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image, height: 120.h, width: 120.w),
          Text(
            dogName,
            style: AppTypography.kMedium18
                .copyWith(color: AppColors.kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
