import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../theme/app_theme.dart';
import '../pages/home_page_orig.dart';

class NavigationHelper {

  static void handleHomeNavigation(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    if (currentRoute == '/') {
      // We're on the home page, just scroll to the home section
      HomePage.scrollToHomeSection();
    } else {
      // We're on a different page, navigate to home first, then scroll
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false).then((_) {
        Future.delayed(const Duration(milliseconds: 100), () {
          HomePage.scrollToHomeSection();
        });
      });
    }
  }

  static void handleAboutNavigation(BuildContext context) {
    // Check if we're already on the home page
    final currentRoute = ModalRoute.of(context)?.settings.name;

    if (currentRoute == '/' || currentRoute == '/home') {
      // We're on the home page, just scroll to the about section
      HomePage.scrollToAboutSection();
    } else {
      // We're on a different page, navigate to home first, then scroll
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false).then((_) {
        // Wait a bit for the page to load, then scroll
        Future.delayed(const Duration(milliseconds: 100), () {
          HomePage.scrollToAboutSection();
        });
      });
    }
  }

  static void handleExperienceNavigation(BuildContext context) {
    // Check if we're already on the home page
    final currentRoute = ModalRoute.of(context)?.settings.name;

    if (currentRoute == '/' || currentRoute == '/home') {
      // We're on the home page, just scroll to the about section
      HomePage.scrollToExperienceSection();
    } else {
      // We're on a different page, navigate to home first, then scroll
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false).then((_) {
        // Wait a bit for the page to load, then scroll
        Future.delayed(const Duration(milliseconds: 100), () {
          HomePage.scrollToExperienceSection();
        });
      });
    }
  }

}
