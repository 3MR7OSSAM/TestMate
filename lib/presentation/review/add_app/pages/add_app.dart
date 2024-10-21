import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_Screenutil.dart';
import 'package:test_mate/core/common/widgets/app_image.dart';
import 'package:test_mate/core/common/widgets/custom_button.dart';
import 'package:test_mate/core/utils/assets/app_images.dart';
import 'package:test_mate/core/utils/color_manger/color_manger.dart';
import 'package:test_mate/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/common/widgets/basic_eclipse.dart';
import '../../../home/widgets/home_app_bar.dart';

class AddAppPage extends StatefulWidget {
  const AddAppPage({super.key});

  @override
  State<AddAppPage> createState() => _AddAppPageState();
}

class _AddAppPageState extends State<AddAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(title: 'Add App', points: 30),
      body: Stack(
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: SingleChildScrollView(
              child: SizedBox(
                height: 0.85.sh,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '50 TM points to add app',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    _buildTextField('App Name'),
                    const SizedBox(height: 15),
                    _buildTextField('Developer name'),
                    const SizedBox(height: 15),
                    _buildTextField('App link'),

                    const SizedBox(height: 30),
                    const Text(
                      'Add app icon:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Container(
                        width: 300.w,
                        height: 150.w,
                        decoration: BoxDecoration(
                          color: ColorManger.darkGrey.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Image.asset(AppImages.testLogo,fit: BoxFit.contain,),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const CustomButton(
                        bgColor: ColorManger.whiteColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.fileImage,color: ColorManger.primary,size: 30,),
                            ),
                            // SizedBox(width: 50,),
                            Text(
                              'Click to upload',
                              style: TextStyle(color: ColorManger.darkGrey,fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                    const Spacer(),
                    const CustomButton(
                        bgColor: ColorManger.darkGrey,
                        child: Text(
                          'Upload App',
                          style: TextStyle(color: ColorManger.whiteColor,fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildTextField(String labelText,) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white10,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
