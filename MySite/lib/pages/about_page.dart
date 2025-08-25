import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ListView(
        children: const [
          SectionContainer(
            title: "About Me",
            content: "I’m a Computer Science student interested in software engineering, data science, and web development.",
          ),
        ],
      ),
      desktop: Center(
        child: SizedBox(
          width: 800,
          child: SectionContainer(
            title: "About Me",
            content: "I’m a Computer Science student interested in software engineering, data science, and web development.",
          ),
        ),
      ),
    );
  }
}