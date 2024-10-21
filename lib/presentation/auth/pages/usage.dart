import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_Screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/widgets/basic_eclipse.dart';
import '../../../core/common/widgets/custom_button.dart';
import '../../../core/utils/assets/app_images.dart';
import '../../../core/utils/color_manger/color_manger.dart';
import '../../../core/utils/route_manger/route_manger.dart';

class UsagePage extends StatelessWidget {
  const UsagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            AppImages.pixels,
            color: Colors.grey.withOpacity(.3),
          )),
          const Positioned.fill(
            child: EclipseContainer(),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  const Text(
                    "How it’s works ?",
                    style: TextStyle(
                      fontSize: 29.0,
                      fontWeight: FontWeight.bold,
                      color: ColorManger.whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  const Text(
                    "It's simple, developers exchange testing their apps to earn tm points and get 20 testers for free. ",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: ColorManger.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  const Text(
                    "Here to Test, Here to Help.",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: ColorManger.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Image.asset(AppImages.usageImage,width: 250.w,),
                  const Spacer(flex: 4,),
                  Center(
                    child: CustomButton(
                      onTap: () {
                        GoRouter.of(context).go(Routes.homePage);
                      },
                      bgColor: ColorManger.darkGrey,
                      child: const Text("Let's Go !",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const Spacer(flex: 4,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
