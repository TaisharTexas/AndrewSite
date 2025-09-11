import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../theme/app_theme.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ResponsiveLayout(
      // MOBILE - Vertical layout
      mobile: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profile or relevant image (you can replace with a different image)
            // Container(
            //   height: 300,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //     image: const DecorationImage(
            //       image: AssetImage('assets/images/pfp.jpeg'), // or use a different image
            //       fit: BoxFit.cover,
            //       alignment: Alignment.topCenter,
            //     ),
            //   ),
            // ),
            const SizedBox(height: 24),
            // Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Me",
                  style: AppColors.normHeadline,
                ),
                const SizedBox(height: 16),
                Text(
                  "My Journey in Tech",
                  style: AppColors.normHeadline2,
                ),
                const SizedBox(height: 16),
                Text(
                  "Passionate about creating innovative solutions",
                  style: AppColors.bodyLargeLight,
                ),
                const SizedBox(height: 32),
                // Main about content
                Text(
                  "I'm a Computer Science student interested in software engineering, data science, and web development. My passion lies in creating innovative solutions that make a real impact.\n\nThroughout my academic journey, I've gained hands-on experience with various programming languages, frameworks, and development methodologies. I enjoy tackling complex problems and turning ideas into functional, user-friendly applications.\n\nWhen I'm not coding, you can find me exploring new technologies, contributing to open-source projects, or mentoring fellow students in their programming journey.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),

      // DESKTOP - Horizontal layout
      desktop: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Container(
              padding: const EdgeInsets.all(48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: AppColors.normHeadline,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "My Journey in Tech",
                    style: AppColors.normHeadline2,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Passionate about creating innovative solutions",
                    style: AppColors.bodyLargeLight,
                  ),
                  const SizedBox(height: 32),
                  // Divider
                  Container(
                    height: 2,
                    width: 60,
                    color: colors.primary.withOpacity(0.3),
                  ),
                  const SizedBox(height: 32),
                  // Extended about content
                  Text(
                    "I'm a Computer Science student interested in software engineering, data science, and web development. My passion lies in creating innovative solutions that make a real impact.\n\nThroughout my academic journey, I've gained hands-on experience with various programming languages, frameworks, and development methodologies. I enjoy tackling complex problems and turning ideas into functional, user-friendly applications.\n\nWhen I'm not coding, you can find me exploring new technologies, contributing to open-source projects, or mentoring fellow students in their programming journey.\n\nI believe in continuous learning and staying up-to-date with the latest industry trends and best practices.",
                    style: AppColors.bodyLargeLight,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}