import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: SectionContainer(
                    title: "Hi, I'm Andrew",
                    content:
                    "Bright, motivated, responsible college student with strong experience developing and deploying software in a collaborative environment, designing with CAD tools, and integrating on FIRST robotic platforms. Taught introduction to Java classes and tutored algebra. Excellent academic, civics, and community service record. Team member and mentor for several FIRST Robotics teams. Currently studying Computer Science at University of Houston (set to graduate Fall ’25).Will provide solutions and finish projects in a professional and urgent manner.",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}