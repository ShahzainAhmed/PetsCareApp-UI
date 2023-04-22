import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_care/app/data/constants/app_colors.dart';

import '../../data/constants/app_typography.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final String hintText;
  const MyTextField({super.key, required this.title, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        Text(
          "Pet $title",
          style: AppTypography.kBold14.copyWith(color: AppColors.kBlackColor),
        ),
        SizedBox(height: 20.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your Pet's $hintText",
            hintStyle:
                AppTypography.kLight12.copyWith(color: AppColors.kGreyColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.kWhiteColor,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
          ),
        )
      ],
    );
  }
}
