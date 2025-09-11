import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../widgets/experience_container.dart';
import '../widgets/header_container.dart';
import '../theme/app_theme.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ResponsiveLayout(
      // MOBILE - Vertical layout
      mobile: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Portfolio",
              style: AppColors.normHeadline,
            ),
            const SizedBox(height: 16),
            Text(
              "My Experience & Projects",
              style: AppColors.normHeadline2,
            ),
            const SizedBox(height: 16),
            Text(
              "Building solutions that make a difference",
              style: AppColors.bodyLargeLight,
            ),
            const SizedBox(height: 32),

            // Experience Section
            Text(
              "EXPERIENCE",
              style: textTheme.headlineSmall?.copyWith(
                color: colors.primary,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 20),
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

            const SizedBox(height: 40),

            // Projects Section
            Text(
              "PROJECTS",
              style: textTheme.headlineSmall?.copyWith(
                color: colors.primary,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 20),
            const SectionContainer(
              title: "Portfolio Website",
              content:
              "Built a responsive portfolio website using Flutter (the one you're on! Poke around and see how you like it, this is my first full project using Flutter :)",
            ),
            const SectionContainer(
              title: "Exam Check-in/out Webapp",
              content:
              "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checking and checkout during exams. The following semester, spearheaded the testing and deployment of the app.",
              seeMoreDescrip: "Click here to see more about this project!",
              seeMoreLink: "/page-in-progress",
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
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import '../responsive_layout.dart';
// import '../widgets/section_container.dart';
// import '../widgets/experience_container.dart';
// import '../widgets/header_container.dart';
//
// class PortfolioPage extends StatelessWidget {
//   const PortfolioPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final colors = Theme.of(context).colorScheme;
//     final textTheme = Theme.of(context).textTheme;
//
//     return ResponsiveLayout(
//
//       // MOBILE
//       mobile: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
//             child: Center(
//               child: Text(
//                 "EXPERIENCE",
//                 style: textTheme.headlineMedium?.copyWith(
//                   color: colors.primary,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.2,
//                 ),
//               ),
//             ),
//           ),
//           const ExperienceContainer(
//             title: "Chevron Internship",
//             date: "May 2023 - August 2023",
//             content:
//             "Designed and prototyped an automated feedback collection and processing app using the Microsoft Power Apps to enable smart and low-friction client feedback during Agile product development cycles.",
//           ),
//           const ExperienceContainer(
//             title: "Chevron Internship",
//             date: "May 2022 - August 2022",
//             content:
//             "Established a process mining and governance model for the PSCM Process Mining initiative. Learned Power BI, Power Apps, Celonis, Process Advisor, and produced the op model workflow to action on bottlenecks identified via the process mining tools.",
//           ),
//           const ExperienceContainer(
//             title: "Copy Dr",
//             date: "August 2021 - Present",
//             content:
//             "Customer service, print job intake, order processing, order finishing, weekend manager",
//           ),
//           const ExperienceContainer(
//             title: "Apache Industrial Internship",
//             date: "March 2020 - August 2020",
//             content:
//             "Helped design, manufacture, and program a human-assisted motorized sanitization cart.",
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
//             child: Center(
//               child: Text(
//                 "PROJECTS",
//                 style: textTheme.headlineMedium?.copyWith(
//                   color: colors.primary,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.2,
//                 ),
//               ),
//             ),
//           ),
//           const SectionContainer(
//             title: "Portfolio Website",
//             content:
//             "Built a responsive portfolio website using Flutter (the one you're on! Poke around and see how you like it, this is my first full project using Flutter :)",
//           ),
//           const SectionContainer(
//             title: "Exam Check-in/out Webapp",
//             content:
//             "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checking and checkout during exams. The following semester, spearheaded the testing and deployment of the app.",
//             seeMoreDescrip: "Click here to see more about this project!",
//             seeMoreLink: "/page-in-progress",
//           ),
//         ],
//       ),
//
//       // DESKTOP
//       desktop: Center(
//         child: SingleChildScrollView(
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 1200),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         HeaderContainer(title: "Experience"),
//                         ExperienceContainer(
//                           title: "Chevron Internship",
//                           date: "May 2023 - August 2023",
//                           content:
//                           "Designed and prototyped an automated feedback collection and processing app using the Microsoft Power Apps to enable smart and low-friction client feedback during Agile product development cycles.",
//                         ),
//                         ExperienceContainer(
//                           title: "Chevron Internship",
//                           date: "May 2022 - August 2022",
//                           content:
//                           "Established a process mining and governance model for the PSCM Process Mining initiative. Learned Power BI, Power Apps, Celonis, Process Advisor, and produced the op model workflow to action on bottlenecks identified via the process mining tools.",
//                         ),
//                         ExperienceContainer(
//                           title: "Copy Dr",
//                           date: "August 2021 - Present",
//                           content:
//                           "Customer service, print job intake, order processing, order finishing, weekend manager",
//                         ),
//                         ExperienceContainer(
//                           title: "Apache Industrial Internship",
//                           date: "March 2020 - August 2020",
//                           content:
//                           "Helped design, manufacture, and program a human-assisted motorized sanitization cart.",
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 20),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         HeaderContainer(title: "Projects"),
//                         SectionContainer(
//                           title: "Portfolio Website",
//                           content:
//                           "Built a responsive portfolio website using Flutter (the one you're on! Poke around and see how you like it, this is my first full project using Flutter :)",
//                         ),
//                         SectionContainer(
//                           title: "Exam Check-in/out Webapp",
//                           content:
//                           "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checkin and checkout during exams. The following semester, spearheaded the testing and deployement of the app.",
//                           seeMoreDescrip:
//                           "Click here to see more about this project!",
//                           seeMoreLink: "/page-in-progress",
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return ResponsiveLayout(
//   //
//   //     // MOBILE
//   //     mobile: ListView(
//   //       children: const [
//   //         Padding(
//   //           padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
//   //           child: Center(
//   //             child: Text(
//   //               "EXPERIENCE",
//   //               style: TextStyle(
//   //                 fontSize: 20,
//   //                 fontWeight: FontWeight.bold,
//   //                 letterSpacing: 1.2,
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //         ExperienceContainer(
//   //           title: "Chevron Internship",
//   //           date: "May 2023 - August 2023",
//   //           content: "Designed and prototyped an automated feedback collection and processing app using the Microsoft Power Apps to enable smart and low-friction client feedback during Agile product development cycles.",
//   //         ),
//   //         ExperienceContainer(
//   //           title: "Chevron Internship",
//   //           date: "May 2022 - August 2022",
//   //           content: "Established a process mining and governance model for the PSCM Process Mining initiative. Learned Power BI, Power Apps, Celonis, Process Advisor, and produced the op model workflow to action on bottlenecks identified via the process mining tools.",
//   //         ),
//   //         ExperienceContainer(
//   //           title: "Copy Dr",
//   //           date: "August 2021 - Present",
//   //           content: "Customer service, print job intake, order processing, order finishing, weekend manager",
//   //         ),
//   //         ExperienceContainer(
//   //           title: "Apache Industrial Internship",
//   //           date: "March 2020 - August 2020",
//   //           content: "Helped design, manufacture, and program a human-assisted motorized sanitization cart.",
//   //         ),
//   //         Padding(
//   //           padding: EdgeInsets.fromLTRB(16, 32, 16, 8), // Extra top margin for separation
//   //           child: Center(
//   //             child: Text(
//   //               "PROJECTS",
//   //               style: TextStyle(
//   //                 fontSize: 20,
//   //                 fontWeight: FontWeight.bold,
//   //                 letterSpacing: 1.2,
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //         SectionContainer(
//   //           title: "Portfolio Website",
//   //           content: "Built a responsive portfolio website using Flutter (the one you're on! Poke around and see how you like it, this is my first full project using Flutter :)",
//   //         ),
//   //         SectionContainer(
//   //           title: "Exam Check-in/out Webapp",
//   //           content: "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checking and checkout during exams. The following semester, spearheaded the testing and deployment of the app.",
//   //           seeMoreDescrip: "Click here to see more about this project!",
//   //           seeMoreLink: "/page-in-progress",
//   //         ),
//   //       ],
//   //     ),
//   //
//   //     //DESKTOP
//   //     desktop: Center(
//   //       child: SingleChildScrollView(
//   //         child: ConstrainedBox(
//   //           constraints: const BoxConstraints(maxWidth: 1200), // Max width instead of fixed
//   //           child: Padding(
//   //             padding: const EdgeInsets.symmetric(horizontal: 20), // Breathing room on edges
//   //             child: Row(
//   //               crossAxisAlignment: CrossAxisAlignment.start,
//   //               children: const [
//   //                 Expanded(
//   //                   child: Column(
//   //                     crossAxisAlignment: CrossAxisAlignment.stretch,
//   //                     children: const [
//   //                       HeaderContainer(title: "Experience"),
//   //                       ExperienceContainer(
//   //                         title: "Chevron Internship",
//   //                         date: "May 2023 - August 2023",
//   //                         content: "Designed and prototyped an automated feedback collection and processing app using the Microsoft Power Apps to enable smart and low-friction client feedback during Agile product development cycles.",
//   //                       ),
//   //                       ExperienceContainer(
//   //                         title: "Chevron Internship",
//   //                         date: "May 2022 - August 2022",
//   //                         content: "Established a process mining and governance model for the PSCM Process Mining initiative. Learned Power BI, Power Apps, Celonis, Process Advisor, and produced the op model workflow to action on bottlenecks identified via the process mining tools.",
//   //                       ),
//   //                       ExperienceContainer(
//   //                         title: "Copy Dr",
//   //                         date: "August 2021 - Present",
//   //                         content: "Customer service, print job intake, order processing, order finishing, weekend manager",
//   //                       ),
//   //                       ExperienceContainer(
//   //                         title: "Apache Industrial Internship",
//   //                         date: "March 2020 - August 2020",
//   //                         content: "Helped design, manufacture, and program a human-assisted motorized sanitization cart.",
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 ),
//   //                 SizedBox(width: 20),
//   //
//   //                 Expanded(
//   //                   child: Column(
//   //                     crossAxisAlignment: CrossAxisAlignment.stretch,
//   //                     children: const [
//   //                       HeaderContainer(title: "Projects"),
//   //                       SectionContainer(
//   //                         title: "Portfolio Website",
//   //                         content: "Built a responsive portfolio website using Flutter (the one you're on! Poke around and see how you like it, this is my first full project using Flutter :)",
//   //                       ),
//   //                       SectionContainer(
//   //                         title: "Exam Check-in/out Webapp",
//   //                         content: "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checkin and checkout during exams. The following semester, spearheaded the testing and deployement of the app.",
//   //                         seeMoreDescrip: "Click here to see more about this project!",
//   //                         seeMoreLink: "/page-in-progress",
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 ),
//   //               ],
//   //             ),
//   //           ),
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }
// }