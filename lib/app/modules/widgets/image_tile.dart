import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_care/app/data/constants/app_colors.dart';
import 'package:pet_care/app/data/constants/app_typography.dart';

class MyImageTile extends StatelessWidget {
  final String title;
  final String image;

  const MyImageTile({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            height: 50.h,
            width: 100.w,
          ),
          Text(
            title,
            style:
                AppTypography.kBold10.copyWith(color: AppColors.kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
