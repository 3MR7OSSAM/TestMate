import 'package:flutter/material.dart';

import '../../../core/utils/color_manger/color_manger.dart';

class TermsWidgets extends StatelessWidget {
  const TermsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'By signing up, you agree to the ',
          style: TextStyle(color: Colors.white, fontSize: 15),
          children: [
            TextSpan(
              text: 'Terms of Service',
              style: TextStyle(color: ColorManger.primary), // Light blue-green color
              // You can also add an onTap function to handle link behavior if needed.
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: 'Data Processing Agreement',
              style: TextStyle(color: ColorManger.primary), // Light blue-green color
            ),
          ],
        ),
      ),
    );
  }
}
