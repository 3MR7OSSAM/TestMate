import 'package:flutter/material.dart';
import 'package:test_mate/presentation/auth/pages/login.dart';
import 'package:test_mate/presentation/auth/pages/register.dart';
import 'package:test_mate/presentation/auth/pages/usage.dart';
import 'package:test_mate/presentation/home/pages/home.dart';
import 'package:test_mate/presentation/profile/pages/edit_profile.dart';
import 'package:test_mate/presentation/review/add_app/pages/add_app.dart';
import 'package:test_mate/presentation/review/app_description/pages/app_details.dart';
import 'package:test_mate/presentation/splah/pages/splash.dart';
import 'package:go_router/go_router.dart';

import '../../../presentation/profile/pages/settings.dart';


class Routes {
  static const String splashRoute = "/";
  static const String homePage = "/homePage";
  static const String loginPage = "/loginPage";
  static const String registerPage = "/registerPage";
  static const String usagePage = "/usagePage";
  static const String appDetails = "/appDetails";
  static const String addApp = "/addApp";
  static const String settingsPage = "/settingsPage";
  static const String editProfile = "/editProfile";

}

// Helper method for page transitions
CustomTransitionPage customPageTransition(Widget child) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}

final GoRouter appRouter = GoRouter(
  initialLocation: Routes.splashRoute,
  routes: [
    GoRoute(
      path: Routes.splashRoute,
      name: 'splash',
      pageBuilder: (context, state) => customPageTransition( const SplashPage()),
    ),
    GoRoute(
      path: Routes.homePage,
      name: 'homePage',
      pageBuilder: (context, state) => customPageTransition( const HomePage()),
    ),
    GoRoute(
      path: Routes.loginPage,
      name: 'loginPage',
      pageBuilder: (context, state) => customPageTransition( const LoginPage()),
    ),
    GoRoute(
      path: Routes.registerPage,
      name: 'registerPage',
      pageBuilder: (context, state) => customPageTransition( const RegisterPage()),
    ),
    GoRoute(
      path: Routes.usagePage,
      name: 'usagePage',
      pageBuilder: (context, state) => customPageTransition( const UsagePage()),
    ),
    GoRoute(
      path: Routes.appDetails,
      name: 'appDetails',
      pageBuilder: (context, state) => customPageTransition( const AppDetailsPages()),
    ),
    GoRoute(
      path: Routes.addApp,
      name: 'addApp',
      pageBuilder: (context, state) => customPageTransition( const AddAppPage()),
    ),    GoRoute(
      path: Routes.settingsPage,
      name: 'settingsPage',
      pageBuilder: (context, state) => customPageTransition( const SettingsPage()),
    ),
    GoRoute(
      path: Routes.editProfile,
      name: 'editProfile',
      pageBuilder: (context, state) => customPageTransition( const EditProfilePage()),
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: SafeArea(
      child: Center(
        child: Text(
          'No Route Found',
          style: TextStyle(fontSize: 35),
        ),
      ),
    ),
  ),
);
