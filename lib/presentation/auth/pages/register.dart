import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_Screenutil.dart';
import 'package:test_mate/core/utils/assets/app_images.dart';
import 'package:go_router/go_router.dart';
import '../../../core/common/widgets/basic_eclipse.dart';
import '../../../core/common/widgets/custom_button.dart';
import '../../../core/utils/color_manger/color_manger.dart';
import '../../../core/utils/route_manger/route_manger.dart';
import '../widgets/remember_me.dart';
import '../widgets/terms_widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            right: 0,
            width: 200,
            height: 400,
            child: EclipseContainer(),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70.h,),
                  Image.asset(AppImages.splashLogo, width: 200.w,),
                  SizedBox(height: 20.h,),

                  Padding(
                    padding: EdgeInsets.only(left: 18.0.w),
                    child: const Text(
                      "Create a New Account",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: ColorManger.whiteColor,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0.w),
                        child: const Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: ColorManger.whiteColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).go(Routes.loginPage);
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: ColorManger.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  _buildTextField('Email', false),
                  const SizedBox(height: 20),
                  _buildTextField('Password', true),
                  const SizedBox(height: 20),
                  _buildTextField('Confirm Password', true),
                  const SizedBox(height: 20),
                  const RememberMe(),
                  Center(
                    child: CustomButton(
                      onTap: () {
                        GoRouter.of(context).go(Routes.usagePage);

                      },
                      bgColor: ColorManger.darkGrey,
                      child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Expanded(child: Divider(color: ColorManger.whiteColor, thickness: 1,)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Or sign up with', style: TextStyle(color: Colors.white)),
                      ),
                      Expanded(child: Divider(color: ColorManger.whiteColor,)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: CustomButton(
                      onTap: () {
                        // Handle Google signup logic
                      },
                      bgColor: ColorManger.whiteColor.withOpacity(0.9),
                      child: Image.asset(AppImages.googleLogo, width: 20,),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TermsWidgets(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String labelText, bool isPassword) {
    return TextField(
      obscureText: isPassword,
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
