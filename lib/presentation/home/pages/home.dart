import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mate/presentation/home/bloc/apps/get_apps_cubit.dart';
import '../../../core/common/widgets/basic_nav.dart';
import '../../../core/utils/service_locator/service_locator.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_page_body.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=> sl.get<GetAppsCubit>()..fetchApps(),
      child: const Scaffold(
        appBar:BasicAppbar(title: 'Available apps',points: 30,isHome: true),
        body:HomePageBody(),
      ),
    );
  }
}
