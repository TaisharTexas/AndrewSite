import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../widgets/experience_container.dart';
import '../widgets/header_container.dart';
import '../theme/app_theme.dart';
import '../helpers/navigation_helper.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final GlobalKey homeSectionKey = GlobalKey();
  static final GlobalKey aboutSectionKey = GlobalKey();
  static final GlobalKey experienceSectionKey = GlobalKey();

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
            // Profile image
            Container(
              key: homeSectionKey,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/pfp.jpeg'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I'm Andrew.",
                  style: AppColors.normHeadline,
                ),
                const SizedBox(height: 16),
                Text(
                  "This is my portfolio",
                  style: AppColors.normHeadline2,
                ),
                const SizedBox(height: 16),
                Text(
                  "Let me show you what I bring to your team",
                  style: AppColors.bodyLargeLight,
                ),
                const SizedBox(height: 32),
                // Add the about section for mobile too
                Container(
                  key: aboutSectionKey,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: colors.surface.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: colors.outline.withOpacity(0.2),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: AppColors.normHeadline2,
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 2,
                        width: 60,
                        color: colors.primary.withOpacity(0.3),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "A burb about me",
                        style: AppColors.bodyLargeLight,
                      ),
                    ],
                  ),
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
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column( // Changed from LayoutBuilder to Column
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // HOME PAGE SECTION - Row with image and content
                IntrinsicHeight(
                  key: homeSectionKey,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Left image - takes up about 45% of available space
                      Expanded(
                        flex: 45,
                        child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 400,
                            maxHeight: 600,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/pfp.jpeg'),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 32), // Space between image and content

                      // Right content - takes up about 55% of available space
                      Expanded(
                        flex: 55,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "I'm Andrew.",
                                style: AppColors.normHeadline,
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "This is my portfolio",
                                style: AppColors.normHeadline2,
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "Let me show you what I bring to your team",
                                style: AppColors.bodyLargeLight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ABOUT ME SECTION - Full width below the row
                const SizedBox(height: 48), // Space between sections

                Container(
                  key: aboutSectionKey,
                  width: double.infinity, // Now this works because it's not inside a Row
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: colors.surface.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: colors.outline.withOpacity(0.2),
                    ),
                  ),
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
                        "A blurb about me",
                        style: AppColors.bodyLargeLight,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 48),

                //Experience Page
                Container(
                  key: experienceSectionKey,
                  width: double.infinity,
                  padding: const EdgeInsets.all(32),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header section
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Portfolio",
                              style: AppColors.normHeadline,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "My Experience & Projects",
                              style: AppColors.normHeadline2,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "Building solutions that make a difference",
                              style: AppColors.bodyLargeLight,
                            ),
                            const SizedBox(height: 32),
                            // Divider
                            Container(
                              height: 2,
                              width: 60,
                              color: colors.primary.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Two-column layout for content
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left column - Experience
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Text(
                                    "EXPERIENCE",
                                    style: textTheme.headlineSmall?.copyWith(
                                      color: colors.primary,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ),
                                const ExperienceContainer(
                                  title: "Chevron Internship",
                                  date: "May 2023 - August 2023",
                                  content:
                                  "Designed and prototyped an automated feedback collection and processing app using the Microsoft Power Apps to enable smart and low-friction client feedback during Agile product development cycles.",
                                ),
                                const ExperienceContainer(
                                  title: "Chevron Internship",
                                  date: "May 2022 - August 2022",
                                  content:
                                  "Established a process mining and governance model for the PSCM Process Mining initiative. Learned Power BI, Power Apps, Celonis, Process Advisor, and produced the op model workflow to action on bottlenecks identified via the process mining tools.",
                                ),
                                const ExperienceContainer(
                                  title: "Copy Dr",
                                  date: "August 2021 - Present",
                                  content:
                                  "Customer service, print job intake, order processing, order finishing, weekend manager",
                                ),
                                const ExperienceContainer(
                                  title: "Apache Industrial Internship",
                                  date: "March 2020 - August 2020",
                                  content:
                                  "Helped design, manufacture, and program a human-assisted motorized sanitization cart.",
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 32),

                          // Right column - Projects
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Text(
                                    "PROJECTS",
                                    style: textTheme.headlineSmall?.copyWith(
                                      color: colors.primary,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ),
                                const SectionContainer(
                                  title: "Portfolio Website",
                                  content:
                                  "Built a responsive portfolio website using Flutter (the one you're on! Poke around and see how you like it, this is my first full project using Flutter :)",
                                ),
                                const SectionContainer(
                                  title: "Exam Check-in/out Webapp",
                                  content:
                                  "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checking and checkout during exams. The following semester, spearheaded the testing and deployment of the app.",
                                  seeMoreDescrip:
                                  "Click here to see more about this project!",
                                  seeMoreLink: "/page-in-progress",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void scrollToAboutSection() {
    final context = aboutSectionKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  static void scrollToHomeSection() {
    final context = homeSectionKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  static void scrollToExperienceSection() {
    final context = experienceSectionKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }
}