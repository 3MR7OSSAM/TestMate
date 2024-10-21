import 'package:test_mate/core/utils/assets/app_images.dart';

import '../../../domain/repository/home_repo/home_repo.dart';
import '../../models/app_model.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<List<AppModel>> getApps() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay

    return [
      AppModel(name: 'Sky Soar', developer: 'Liam Patterson', credits: 30, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      AppModel(name: 'Home Finder', developer: 'Ethan Rogers', credits: 25, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      AppModel(name: 'Flight Frenzy', developer: 'Olivia Brooks', credits: 20, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      AppModel(name: 'Map Explorer', developer: 'Sophia Morgan', credits: 20, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      AppModel(name: 'Wings of Fury', developer: 'Mason Bennett', credits: 20, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      AppModel(name: 'Realty Radar', developer: 'Isabella Foster', credits: 15, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      AppModel(name: 'Sky Soar', developer: 'Liam Patterson', credits: 15, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      AppModel(name: 'Home Finder', developer: 'Ethan Rogers', credits: 14, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      AppModel(name: 'Flight Frenzy', developer: 'Olivia Brooks', credits: 12, iconUrl: AppImages.testLogo, googlePlayLink: ''),
      // Add other apps here
    ];

  }
}