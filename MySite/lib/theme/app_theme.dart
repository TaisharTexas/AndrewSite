import 'package:flutter/material.dart';

class AppColors {
  // Base colors
  static const Color primary = Color(0xFF1A2A80);
  static const Color secondary = Color(0xFF3B38A0);
  static const Color accent = Color(0xFF7A85C1);
  static const Color surface = Color(0xFFB2B0E8);
  static const Color background = Color(0xFFFFFFFF);

  static const Color onHoverBackground = Color(0xFF562AF6);
  static const Color gradient1 = Color(0xFF1B1A29);
  static const Color gradient2 = Color(0xFF383850);

  // Container text colors
  static const Color containerHeader = Color(0xFFFFFFFF);
  static const Color containerSubHeader = Color(0xFF5E5E5E);
  static const Color containerBody = Color(0xFF282537);
  static const Color containerLink = Color(0xFF5E5E5E);
}

// Container-specific text styles
class ContainerTextStyles {
  static const TextStyle header = TextStyle(
    color: AppColors.containerHeader,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static const TextStyle subHeader = TextStyle(
    color: AppColors.containerSubHeader,
    fontSize: 14,
  );

  static const TextStyle body = TextStyle(
    color: AppColors.containerBody,
    fontSize: 16,
  );

  static const TextStyle link = TextStyle(
    color: AppColors.containerLink,
    fontSize: 14,
  );
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Garamond',
      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        background: AppColors.background,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.primary,
        onBackground: Colors.white,
      ),
      textTheme: const TextTheme(
        // Page headlines
        displayLarge: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 70,
        ),
        displayMedium: TextStyle(
          color: AppColors.surface,
          fontWeight: FontWeight.bold,
          fontSize: 55,
        ),

        // Navbar header
        headlineLarge: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          fontFamily: 'Antonio',
        ),

        // Contact section headers
        headlineMedium: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),

        // Special text styles
        titleLarge: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 45,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 25,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}