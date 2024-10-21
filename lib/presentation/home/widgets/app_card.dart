import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_Screenutil.dart';
import 'package:test_mate/core/utils/route_manger/route_manger.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/widgets/app_image.dart';
import '../../../core/utils/assets/app_images.dart';
import '../../../core/utils/color_manger/color_manger.dart';

class AppCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final int credits;
  const AppCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.credits,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(Routes.appDetails);
      },
      child: Container(
        height: 110.h,
        decoration: BoxDecoration(
          color: ColorManger.darkGrey.withOpacity(0.8),
          // Dark background as in the design
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        padding: const EdgeInsets.all(12.0), // Padding around the card content
        child: Row(
          children: [
            // Leading Icon (App Icon)
            AppImage(imageUrl: imageUrl),

            const SizedBox(width: 12), // Spacing between icon and text
            // Title and Description
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color:
                      Color(0xff83FFD6), // White text to match the design
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Spacing between title and description
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 13,
                      color: ColorManger.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            // Trailing Info (Arrow + Credits)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.arrow_forward_ios_outlined,
                    size: 16, color: Colors.grey.shade400),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.pointsLogo,width: 18.w,),
                    Text(' : $credits',style: const TextStyle(color: ColorManger.whiteColor,fontFamily: 'Mansalva',fontSize: 16),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

