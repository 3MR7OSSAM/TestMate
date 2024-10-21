import 'package:flutter/material.dart';

import '../../../../core/common/widgets/app_image.dart';
import '../../../../core/common/widgets/basic_eclipse.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/utils/assets/app_images.dart';
import '../../../../core/utils/color_manger/color_manger.dart';

class AppDetailsBody extends StatelessWidget {
  const AppDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          const Positioned.fill(
            top: 0,
            right: 0,
            child: EclipseContainer(
              spreadRadius: 300,
              opacity: 0.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: AppImage(imageUrl: AppImages.testLogo),
                ),
                const SizedBox(width: 100),
                _appNameWidget(),
                const SizedBox(height: 16),
                _developerWidget(),
                const SizedBox(height: 16),
                _postDateWidget(),
                const SizedBox(height: 16),
                _testingPointsWidget(),
                const SizedBox(height: 16),
                _appDescription(),
                const Spacer(flex: 4),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                    ),
                    const Text(
                      'I will add review',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      '+1 TM point',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                const CustomButton(
                  bgColor: ColorManger.darkGrey,
                  child: Text(
                    'Test Now',
                    style: TextStyle(color: ColorManger.whiteColor),
                  ),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Widget _appDescription (){
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Divider(color: Colors.white),
      ),
      Text(
        'App Description :',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ],
  );

}

Widget _testingPointsWidget (){
  return const Row(
    children: [
      Image(
        image: AssetImage(AppImages.pointsLogo),
        width: 30,
      ),
      Spacer(),
      Text(
        '30',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ],
  );

}

Widget _postDateWidget () {


  return const Row(
    children: [
      Text(
        'Post date',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      Spacer(),
      Text(
        'Oct 16, 2024',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ],
  );

}

Widget _developerWidget (){

  return const Row(
    children: [
      Text(
        'Developer name',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      Spacer(),
      Text(
        'Mohamed Ahmed',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ],
  );

}

Widget _appNameWidget () {

  return const Row(
    children: [
      Text(
        'App name',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      Spacer(),
      Text(
        'AR-BETA',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ],
  );

}