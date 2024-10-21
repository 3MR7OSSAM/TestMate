import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_Screenutil.dart';
import 'package:test_mate/core/utils/assets/app_images.dart';
import 'package:test_mate/core/utils/color_manger/color_manger.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppbar({
    super.key,
    required this.title,
    this.points,
    this.isHome,
  });

  final String title;
  final int? points;
  final bool? isHome;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: ColorManger.primary,
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: null,
      title: Row(
        children: [
          isHome == null
              ? IconButton(
                  icon: const Icon(Icons.arrow_back,
                      color: ColorManger.whiteColor),
                  onPressed: () {
                    Navigator.pop(context); // Action for back button
                  },
                )
              : const SizedBox(),
          Text(
            title,
            style: const TextStyle(
              color: ColorManger.whiteColor,
              fontSize: 28,
            ),
          ),
          const Spacer(),
          points != null
              ? Container(
            width: 85.w,
            height: 40,
            decoration: BoxDecoration(
              color: ColorManger.darkGrey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.pointsLogo,
                  width: 22.w,
                ),
                Text(
                        ': $points',
                        style: const TextStyle(
                          color: ColorManger.whiteColor,
                          fontFamily: 'Mansalva',
                          fontSize: 19,
                        ),
                      )

              ],
            ),
          ):const SizedBox(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
