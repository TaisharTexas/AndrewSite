import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mysite/layout.dart';
import 'package:mysite/controllers/menu_controller.dart';
import 'package:mysite/controllers/navigation_controller.dart';

void main() {
  Get.put(MyMenuController());
  Get.put(MyNavigationController())
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test Site",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        primaryColor: Colors.blue
      ),
      home: SiteLayout(),
    ); // GetMaterialApp
  }
}

