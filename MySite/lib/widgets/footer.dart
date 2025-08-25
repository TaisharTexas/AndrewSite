// footer.dart
import 'package:flutter/material.dart';
import '../responsive_layout.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    final footerHeight = isMobile ? 50.0 : 40.0; // smaller height for desktop
    final fontSize = isMobile ? 14.0 : 12.0;

    return Container(
      height: footerHeight,
      width: double.infinity,
      color: Colors.indigo,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "© ${DateTime.now().year} Andrew Lee",
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 12 : 14, // slightly smaller on mobile
            ),
          ),
          // const SizedBox(height: 2), // spacing between lines
          // const Text(
          //   "Built with Flutter,
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 12,
          //   ),
          // ),
        ],
      ),
    );
  }
}