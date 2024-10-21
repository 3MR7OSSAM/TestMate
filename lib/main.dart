import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_mate/core/utils/service_locator/service_locator.dart';

import 'core/utils/assets/fonts_manger.dart';
import 'core/utils/color_manger/color_manger.dart';
import 'core/utils/route_manger/route_manger.dart';
import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set to your design's base size
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Salaa Mobile',
          theme: ThemeData(
              fontFamily: FontsManger.defaultFont,
              scaffoldBackgroundColor: ColorManger.blackColor,
              colorScheme: ColorScheme.fromSeed(
                seedColor: ColorManger.whiteColor,
              ),
              useMaterial3: true),
          routerConfig: appRouter, // Use the router from app_router.dart
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
