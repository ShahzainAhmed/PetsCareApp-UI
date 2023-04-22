import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_care/app/data/constants/app_colors.dart';

class MyAnimalTiles extends StatelessWidget {
  final Color? color;
  final String image;
  const MyAnimalTiles({super.key, this.color, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: color ?? AppColors.kWhiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
