import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_mate/core/utils/color_manger/color_manger.dart';
import 'package:test_mate/main.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/widgets/basic_eclipse.dart';
import '../../../core/utils/assets/app_images.dart';
import '../../../core/utils/route_manger/route_manger.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateToNext();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset(AppImages.pixels,color: Colors.grey.withOpacity(.3),)),
          const Positioned(
            top: 0,
            right: 0,
            width: 200,
            height: 400,
            child: EclipseContainer(opacity: 0.2,),
          ),
          const Positioned(
            left: 0,
            bottom: 0,
            child: EclipseContainer(opacity: 0.2,),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.splashLogo,width: 200.w,),
                  const Text(
                    "Here to Test, Here to Help",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: ColorManger.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNext() {
    Future.delayed(const Duration(seconds: 3), () async {
      User? user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        if(mounted) {
          GoRouter.of(context).go(Routes.loginPage);
        }
      } else {
        if(mounted) {
          GoRouter.of(context).go(Routes.loginPage);
        }
      }
    });
  }
}
