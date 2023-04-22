import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pet_care/app/data/constants/app_assets.dart';
import 'package:pet_care/app/data/constants/app_colors.dart';
import 'package:pet_care/app/data/constants/app_typography.dart';
import 'package:pet_care/app/modules/profile_screen/profile_screen.dart';
import 'package:pet_care/app/modules/widgets/color_tiles.dart';
import 'package:pet_care/app/modules/widgets/image_tile.dart';
import 'package:pet_care/app/modules/widgets/main_animal_tile.dart';
import 'package:pet_care/app/modules/widgets/stacked_animal_tiles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: AppColors.kBlackColor,
        ),
        title: Text(
          "Pet Care",
          style: AppTypography.kBold20.copyWith(color: AppColors.kPrimaryColor),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: InkWell(
              onTap: () {
                Get.to(() => const ProfileScreen());
              },
              child: const Icon(
                Icons.search,
                color: AppColors.kBlackColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: MyMainAnimalTile(
                dogName: "Tommy",
                image: AppAssets.kDog1,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MyColorTiles(
                  title: "Male",
                  subtitle: "Gender",
                  color: AppColors.kOrangeColor,
                ),
                MyColorTiles(
                  title: "3.8 Kg",
                  subtitle: "Weight",
                  color: AppColors.kBlueColor,
                ),
                MyColorTiles(
                  title: "Sheltie",
                  subtitle: "Breed",
                  color: AppColors.kGreenColor,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              "Pet's Care",
              style:
                  AppTypography.kBold14.copyWith(color: AppColors.kBlackColor),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyImageTile(title: "Health Record", image: AppAssets.kDoctor),
                MyImageTile(title: "Pet's Schedule", image: AppAssets.kSchedule)
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              "Explore",
              style:
                  AppTypography.kBold14.copyWith(color: AppColors.kBlackColor),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                MyStackAnimalTiles(
                  title: "Importance \nof Pet's Care",
                  image: AppAssets.kDog2,
                ),
                MyStackAnimalTiles(
                  title: "Benefits of \nPet's Care",
                  image: AppAssets.kDog3,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
