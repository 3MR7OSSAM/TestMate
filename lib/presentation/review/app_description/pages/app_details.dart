import 'package:flutter/material.dart';
import 'package:test_mate/presentation/home/widgets/home_app_bar.dart';
import '../widgets/app_details_body.dart';

class AppDetailsPages extends StatelessWidget {
  const AppDetailsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppbar(title: 'App details', points: 30),
      body: AppDetailsBody(),
    );
  }
}



