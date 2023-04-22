import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pet_care/app/data/constants/app_assets.dart';
import 'package:pet_care/app/data/constants/app_colors.dart';
import 'package:pet_care/app/data/constants/app_typography.dart';
import 'package:pet_care/app/modules/widgets/animal_tiles.dart';
import 'package:pet_care/app/modules/widgets/textformfield_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.kBlackColor,
            )),
        title: Text(
          "Pet Care",
          style: AppTypography.kBold20.copyWith(color: AppColors.kPrimaryColor),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(
              Icons.search,
              color: AppColors.kBlackColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Container(
                    height: 80.h,
                    width: 80.h,
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppAssets.kDog1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 125.w,
                  top: 60.h,
                  child: CircleAvatar(
                    backgroundColor: AppColors.kBlueColor,
                    radius: 12.r,
                    child: Icon(
                      Icons.add,
                      size: 15.sp,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30.h),
            Text(
              "Pet Type",
              style:
                  AppTypography.kBold14.copyWith(color: AppColors.kBlackColor),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyAnimalTiles(
                  color: AppColors.kGreenColor,
                  image: AppAssets.kDog4,
                ),
                MyAnimalTiles(
                  image: AppAssets.kCat,
                ),
                MyAnimalTiles(
                  image: AppAssets.kRabbit,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColors.kWhiteColor,
                    shape: const CircleBorder(),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: AppColors.kBlackColor,
                  ),
                ),
              ],
            ),
            const MyTextField(title: "Breed", hintText: "Breed"),
            const MyTextField(title: "Gender", hintText: "Gender"),
            const MyTextField(title: "Age", hintText: "Age"),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
