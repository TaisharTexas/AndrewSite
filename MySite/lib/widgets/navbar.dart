import 'package:flutter/material.dart';
import '../responsive_layout.dart';

class Navbar extends StatelessWidget {
  final Function(String) onNavTap;
  final String currentPage;

  const Navbar({super.key, required this.onNavTap, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    // final pages = ["Home", "About", "Portfolio", "Resume", "Contact"];
    final isMobile = ResponsiveLayout.isMobile(context);

    final pageRoutes = {
      "Home": "/",
      "About Me": "/about",
      "Portfolio": "/experience",
      "Resume": "/resume",
      "Contact": "/contact",
    };

    if (isMobile) {
      // Mobile: show a hamburger menu
      return AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Andrew Lee"),
        actions: [],
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // opens the drawer
            },
          ),
        ),
      );
    } else {
      // Desktop: show normal text buttons
      return AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Andrew Lee"),
        actions: pageRoutes.entries.map(
              (entry) => TextButton(
            onPressed: () => onNavTap(entry.value), // use route here
            child: Text(
              entry.key,
              style: TextStyle(
                color: currentPage == entry.value ? Colors.yellow : Colors.white,
              ),
            ),
          ),
        ).toList(),
      );
    }
  }
}