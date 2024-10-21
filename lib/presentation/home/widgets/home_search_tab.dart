import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_mate/core/utils/color_manger/color_manger.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchTab extends StatelessWidget {
  const HomeSearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey.shade400)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Search for apps ...',
                  style: TextStyle(color: Colors.grey.shade400),
                ),
                const Spacer(),
                Container(
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManger.primary.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      FontAwesomeIcons.search,
                      color: ColorManger.whiteColor.withOpacity(0.8),
                      size: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
