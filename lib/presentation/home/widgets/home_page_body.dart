import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_mate/core/utils/color_manger/color_manger.dart';
import 'package:test_mate/presentation/home/widgets/home_search_tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../core/common/widgets/basic_eclipse.dart';
import '../../../core/utils/route_manger/route_manger.dart';
import 'apps_list_view.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        const Positioned.fill(
          top: 0,
          right: 0,
          child: EclipseContainer(
            spreadRadius: 300,
            opacity: 0.3,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width:.3.sh,
                      child: const HomeSearchTab()),
                  const AddAppIcon(),
                  const ProfileIcon(),
                  const SizedBox(width: 3,)
                ],
              ),
              const AppsListView(),
              SizedBox(height: 20.h,)
            ],
          ),
        ),
        // const Align(
        //     alignment: Alignment.bottomCenter,
        //     child: BasicNavBar())
      ],
    );
  }
}

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(Routes.settingsPage);
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorManger.primary.withOpacity(0.3)
        ),
        child: const Icon(FontAwesomeIcons.user,size: 18,color: ColorManger.whiteColor,),
      ),
    );
  }
}

class AddAppIcon extends StatelessWidget {
  const AddAppIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(Routes.addApp);
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorManger.primary.withOpacity(0.3)
        ),
        child: const Icon(FontAwesomeIcons.plus,size: 18,color: ColorManger.whiteColor,),
      ),
    );
  }
}
