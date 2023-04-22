import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_care/app/data/constants/app_colors.dart';
import 'package:pet_care/app/data/constants/app_typography.dart';

class MyStackAnimalTiles extends StatelessWidget {
  final String title;
  final String image;
  const MyStackAnimalTiles(
      {super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            height: 80.h,
            width: 150.w,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.kGreyColor.withOpacity(0.2),
                  blurRadius: 5,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Text(
              title,
              style:
                  AppTypography.kBold10.copyWith(color: AppColors.kBlackColor),
            ),
          ),
          Positioned(
            bottom: 15.h,
            right: 20.w,
            child: Image.asset(
              image,
              height: 90.h,
            ),
          ),
        ],
      ),
    );
  }
}
