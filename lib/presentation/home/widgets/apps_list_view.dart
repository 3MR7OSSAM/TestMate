import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_Screenutil.dart';

import '../../../core/utils/color_manger/color_manger.dart';
import '../bloc/apps/get_apps_cubit.dart';
import 'app_card.dart';

class AppsListView extends StatelessWidget {
  const AppsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAppsCubit, GetAppsState>(
      builder: (context, state) {
        if (state is GetAppsLoading) {
          return SizedBox(
            height: 0.6.sh, // Give a fixed height
            child: const Center(
              child: CircularProgressIndicator(
                color: ColorManger.primary,
              ),
            ),
          );
        } else if (state is GetAppsSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.apps.length,
            itemBuilder: (context, index) {
              final app = state.apps[index];
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: AppCard(
                  imageUrl: app.iconUrl,
                  title: app.name,
                  description: app.developer,

                  credits: app.credits,
                ),
              );
            },
          );
        } else {
          return const Center(child: Text('Failed to load apps'));
        }
      },
    );
  }
}
