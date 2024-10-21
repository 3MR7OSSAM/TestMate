import 'package:flutter/material.dart';
import 'package:test_mate/core/common/widgets/custom_button.dart';
import 'package:test_mate/core/utils/color_manger/color_manger.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/widgets/basic_eclipse.dart';
import '../../../core/utils/assets/app_images.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // Controllers for the text fields
  final TextEditingController _nameController = TextEditingController(text: "Mohamed Ahmed");
  final TextEditingController _emailController = TextEditingController(text: "Loisbecket@gmail.com");
  final TextEditingController _passwordController = TextEditingController(text: "******");

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: ColorManger.whiteColor,
                      ),
                    ),
                    const Spacer(flex: 1),
                    const Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
                const SizedBox(height: 30),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage:
                  AssetImage(AppImages.testAvatar), // Replace with your image path
                ),
                const SizedBox(height: 20),
                const Text(
                  'Change Photo +',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                _buildTextField('Name', _nameController),
                const SizedBox(height: 20),
                _buildTextField('Email', _emailController),
                const SizedBox(height: 20),
                _buildTextField('Password', _passwordController, isPassword: true),
                const SizedBox(height: 60),

                CustomButton(child: Text('Save Changes',style: TextStyle(color: ColorManger.whiteColor),), bgColor: ColorManger.darkGrey)
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Build TextField widget with controller and label
  Widget _buildTextField(String labelText, TextEditingController controller, {bool isPassword = false}) {
    return TextField(
      style: TextStyle(color: ColorManger.whiteColor),
      controller: controller,
      obscureText: isPassword, // Toggle obscuring for password fields
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: ColorManger.whiteColor),
        filled: true,
        fillColor: Colors.white10,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
