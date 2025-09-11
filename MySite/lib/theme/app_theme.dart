import 'package:flutter/material.dart';

// Define your custom colors from the palette
class AppColors {
  static const Color primary = Color(0xFF1A2A80);     
  static const Color secondary = Color(0xFF3B38A0);   
  static const Color accent = Color(0xFF7A85C1);      
  static const Color surface = Color(0xFFB2B0E8);     
  static const Color background = Color(0xFFFFFFFF);  // White

  static const Color onHoverBackground = Color(0xFF562AF6); //Vivid purple hover background
  static const Color gradient1 = Color(0xFF1B1A29);
  static const Color gradient2 = Color(0xFF383850);

  // Text colors
  static const Color textPrimaryDark = Color(0xFF1A2A80);   // Dark navy for headings
  static const Color textPrimaryLight = Color(0xFFFFFFFF);  // White for heading on dark colors
  static const Color textSecondary = Color(0xFF3B38A0); // Muted secondary text

  // Status colors
  static const Color error = Color(0xFFDC2626);       // Red
  static const Color warning = Color(0xFFF59E0B);     // Orange
  static const Color success = Color(0xFF10B981);     // Green

  static const TextStyle headerBlock = TextStyle(
    color: textPrimaryDark,
    fontWeight: FontWeight.bold,
    fontSize: 28,
    fontFamily: 'Antonio',
  );

  static const TextStyle normHeadline = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 70,
    // fontFamily: 'Antonio',
  );

  static const TextStyle normHeadline2 = TextStyle(
    color: Color(0xFFB2B0E8),
    fontWeight: FontWeight.bold,
    fontSize: 55,
    // fontFamily: 'Antonio',
  );

  static const TextStyle bodyLargeLight = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 45,
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
        error: AppColors.error,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.textPrimaryDark,
        onBackground: AppColors.textPrimaryLight,
        onError: Colors.white,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(color: AppColors.textPrimaryDark, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(color: AppColors.textPrimaryDark),
        bodyLarge: TextStyle(color: AppColors.textSecondary),
        bodyMedium: TextStyle(color: AppColors.textSecondary),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.textPrimaryLight,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}