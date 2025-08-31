import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../theme/app_theme.dart';

class Navbar extends StatelessWidget {
  final Function(String) onNavTap;
  final String currentPage;

  const Navbar({super.key, required this.onNavTap, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    final pageRoutes = {
      "Home": "/",
      "About Me": "/about",
      "Experience": "/experience",
      // "Resume": "/resume",
      "Contact": "/contact",
    };

    if (isMobile) {
      // Mobile: show a hamburger menu
      return AppBar(
        title: const Text("Andrew Lee"),
        actions: [],
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      );
    } else {
      // Desktop: show normal text buttons with hover effects
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Row(
          children: [
            // Left third - black background with title
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.black,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Andrew Lee",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // Right two thirds - transparent background with nav links
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: pageRoutes.entries.map(
                        (entry) => _NavButton(
                      label: entry.key,
                      route: entry.value,
                      isActive: currentPage == entry.value,
                      onTap: () => onNavTap(entry.value),
                    ),
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
        // title: const Text("Andrew Lee"),
        // actions: pageRoutes.entries.map(
        //       (entry) => _NavButton(
        //     label: entry.key,
        //     route: entry.value,
        //     isActive: currentPage == entry.value,
        //     onTap: () => onNavTap(entry.value),
        //   ),
        // ).toList(),
      );
    }
  }
}

class _NavButton extends StatefulWidget {
  final String label;
  final String route;
  final bool isActive;
  final VoidCallback onTap;

  const _NavButton({
    required this.label,
    required this.route,
    required this.isActive,
    required this.onTap,
  });

  @override
  State<_NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<_NavButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        height: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: (widget.isActive)
              ? AppColors.onHoverBackground // Purple background on active/hover
              : Colors.transparent,
        ),
        child: TextButton(
          onPressed: widget.onTap,
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent, // Override default button background
            foregroundColor: Colors.transparent, // Override default text color
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            minimumSize: const Size(0, double.infinity),
            // splashFactory: NoSplash.splashFactory,
            overlayColor: Colors.transparent,
          ),
          child: Text(
            widget.label,
            style: TextStyle(
              color: (widget.isActive || isHovered)
                  ? Colors.white // White text on active/hover
                  : Colors.grey, // Grey text by default
            ),
          ),
        ),
      ),
    );
  }
}