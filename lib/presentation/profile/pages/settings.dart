import 'package:flutter/material.dart';
import 'package:test_mate/core/utils/color_manger/color_manger.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/widgets/basic_eclipse.dart';
import '../../../core/utils/assets/app_images.dart';
import '../../../core/utils/route_manger/route_manger.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                    IconButton(onPressed: (){
                      GoRouter.of(context).pop();
                    }, icon: const Icon(Icons.arrow_back_ios,color: ColorManger.whiteColor,)),
                    const Spacer(flex:1,),
                    const Center(
                      child: Text(
                        ' Settings',
                        style: TextStyle(
                          fontSize: 24,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(flex: 3,),

                  ],
                ),
                const SizedBox(height: 10),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      AppImages.testAvatar), // Replace with your image path
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mohamed Ahmed',
                  style: TextStyle(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                 SettingsSection(
                  title: 'Account:',
                  items: [
                    SettingsItem(icon: Icons.edit, text: 'Edit ',onTap: (){GoRouter.of(context).push(Routes.editProfile);},),
                    SettingsItem(icon: Icons.lock, text: 'Privacy'),
                  ],
                ),
                const SettingsSection(
                  title: 'Notification:',
                  items: [
                    SettingsToggleItem(
                        icon: Icons.notifications,
                        text: 'Notification',
                        value: true),
                    SettingsToggleItem(
                        icon: Icons.system_update,
                        text: 'Updates',
                        value: false),
                  ],
                ),
                const SettingsSection(
                  title: 'Other:',
                  items: [
                    SettingsToggleItem(
                        icon: Icons.dark_mode, text: 'Dark Mode', value: true),
                    SettingsLanguageItem(text: 'Language', language: 'English'),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Handle logout action
                  },
                  child: const Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const SettingsSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            // fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        ...items,
        const Center(
          child: SizedBox(
            width: 200,
            child: Divider(
              color: ColorManger.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const SettingsItem({super.key, required this.icon, required this.text, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsToggleItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool value;

  const SettingsToggleItem(
      {required this.icon, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Switch(
            activeColor: ColorManger.primary,
            value: value,
            onChanged: (newValue) {
              // Handle switch toggle
            },
          ),
        ],
      ),
    );
  }
}

class SettingsLanguageItem extends StatelessWidget {
  final String text;
  final String language;

  const SettingsLanguageItem({super.key, required this.text, required this.language});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          const Icon(Icons.language, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            language,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
