import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_manger/color_manger.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (bool? value) {},
              activeColor: ColorManger.primary,
            ),
            const Text('Remember me',
                style: TextStyle(color: Colors.white)),
          ],
        ),
        GestureDetector(
          onTap: () {
            // Handle forgot password logic
          },
          child: const Text(
            'Forgot Password?',
            style: TextStyle(color: ColorManger.primary),
          ),
        ),
      ],
    );
  }
}
