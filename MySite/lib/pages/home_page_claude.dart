import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../theme/app_theme.dart';

// NOT USING
class HomePageClaude extends StatelessWidget {
  const HomePageClaude({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ResponsiveLayout(
      mobile: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        children: const [
          SectionContainer(
            title: "Hi, I'm Andrew",
            content:
            "Bright, motivated, responsible college student with strong experience developing and deploying software in a collaborative environment, designing with CAD tools, and integrating on FIRST robotic platforms. Taught introduction to Java classes and tutored algebra. Excellent academic, civics, and community service record. Team member and mentor for several FIRST Robotics teams. Currently studying Computer Science at University of Houston (set to graduate Fall â€™25).Will provide solutions and finish projects in a professional and urgent manner.",
          ),
        ],
      ),
      desktop: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF11121A), // Dark navy
              Color(0xFF1A1B2E), // Slightly lighter
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 100),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Calculate responsive height
                  double stackHeight = constraints.maxWidth < 768
                      ? 300 // Smaller height for smaller screens
                      : constraints.maxWidth * 0.5; // 50% of container width for desktop

                  return SizedBox(
                    height: stackHeight,
                    child: Stack(
                      children: [
                        // Left image - 40% of container width
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: constraints.maxWidth * 0.4,
                            height: stackHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/pfp.jpeg',
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                        // Right content block - 50% of container width
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: constraints.maxWidth * 0.5,
                            height: stackHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("I'm Andrew.",
                                  style: TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.2,
                                  ),
                                ),
                                Text("A Software Developer",
                                  style: TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70,
                                    height: 1.2,
                                  ),
                                ),
                                Text("based in Houston.",
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blue.shade300,
                                    height: 1.2,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Text("Bright, motivated computer science student with experience in collaborative software development, robotics, and tutoring.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white70,
                                    height: 1.6,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}