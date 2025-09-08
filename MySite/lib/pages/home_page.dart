import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../theme/app_theme.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            "Bright, motivated, responsible college student with strong experience developing and deploying software in a collaborative environment, designing with CAD tools, and integrating on FIRST robotic platforms. Taught introduction to Java classes and tutored algebra. Excellent academic, civics, and community service record. Team member and mentor for several FIRST Robotics teams. Currently studying Computer Science at University of Houston (set to graduate Fall ’25).Will provide solutions and finish projects in a professional and urgent manner.",
          ),
        ],
      ),
      desktop: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Calculate responsive height
                double stackHeight = constraints.maxWidth < 768
                    ? 300 // Smaller height for smaller screens
                    : constraints.maxWidth * 0.5; // 40% of container width for desktop

                return SizedBox(
                  height: stackHeight,
                  child: Stack(
                    children: [
                      // Left image - 50% of container width
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: constraints.maxWidth * 0.5,
                          height: stackHeight,
                          child: Image.asset(
                            'assets/images/pfp.jpeg',
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                      // Right content block - 60% of container width
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: constraints.maxWidth * 0.55,
                          height: stackHeight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("I'm Andrew.",
                                style: AppColors.normHeadline,
                              ),
                              const SizedBox(height: 20),
                              Text("This is my portfolio",
                                style: AppColors.normHeadline2,
                              ),
                              const SizedBox(height: 20),
                              Text("Let me show you what I bring to your team",
                                style: AppColors.bodyLargeLight,

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
      // desktop: SingleChildScrollView(
      //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      //   child: Center(
      //     child: ConstrainedBox(
      //       constraints: const BoxConstraints(maxWidth: 1100),
      //       child: Stack(
      //         children: [
      //           // Left image - 50% width from left
      //           Positioned(
      //             left: 0,
      //             top: 0,
      //             child: Container(
      //               width: MediaQuery.of(context).size.width * 0.5, // 50% of screen width
      //               height: 400, // Adjust height as needed
      //               child: Image.asset(
      //                 'assets/images/pfp.jpeg', // Replace with your image path
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //           // Right content block - 60% width from right
      //           Positioned(
      //             right: 0,
      //             top: 0,
      //             child: Container(
      //               width: MediaQuery.of(context).size.width * 0.6, // 60% of screen width
      //               child: const SectionContainer(
      //                 title: "Hi, I'm Andrew",
      //                 content:
      //                 "Bright, motivated, responsible college student with strong experience developing and deploying software in a collaborative environment, designing with CAD tools, and integrating on FIRST robotic platforms. Taught introduction to Java classes and tutored algebra. Excellent academic, civics, and community service record. Team member and mentor for several FIRST Robotics teams. Currently studying Computer Science at University of Houston (set to graduate Fall â€™25).Will provide solutions and finish projects in a professional and urgent manner.",
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       // child: Row(
      //       //   crossAxisAlignment: CrossAxisAlignment.start,
      //       //   children: const [
      //       //     Expanded(
      //       //       child: SectionContainer(
      //       //         title: "Hi, I'm Andrew",
      //       //         content:
      //       //         "Bright, motivated, responsible college student with strong experience developing and deploying software in a collaborative environment, designing with CAD tools, and integrating on FIRST robotic platforms. Taught introduction to Java classes and tutored algebra. Excellent academic, civics, and community service record. Team member and mentor for several FIRST Robotics teams. Currently studying Computer Science at University of Houston (set to graduate Fall ’25).Will provide solutions and finish projects in a professional and urgent manner.",
      //       //       ),
      //       //     ),
      //       //   ],
      //       // ),
      //     ),
      //   ),
      // ),
    );
  }
}