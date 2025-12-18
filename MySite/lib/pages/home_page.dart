import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../widgets/experience_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final GlobalKey homeSectionKey = GlobalKey();
  static final GlobalKey aboutSectionKey = GlobalKey();
  static final GlobalKey experienceSectionKey = GlobalKey();
  static final GlobalKey contactSectionKey = GlobalKey();

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
            Center(
              child: Container(
                key: homeSectionKey,
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pfp.jpeg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("I'm Andrew.", style: textTheme.displayLarge),
                const SizedBox(height: 16),
                Text("And I'm still working on the mobile view for this page!", style: textTheme.displayMedium),
                const SizedBox(height: 16),
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
            child: Column(
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

                      const SizedBox(width: 32),

                      // Right content - takes up about 55% of available space
                      Expanded(
                        flex: 55,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("I'm Andrew.", style: textTheme.displayLarge),
                              const SizedBox(height: 24),
                              Text("This is my portfolio", style: textTheme.displayMedium),
                              const SizedBox(height: 24),
                              Text("Let me show you what I bring to your team", style: textTheme.titleLarge),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ABOUT ME SECTION - Full width below the row
                const SizedBox(height: 32),

                Container(
                  key: aboutSectionKey,
                  width: double.infinity,
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
                      Text("About Me", style: textTheme.displayLarge),
                      const SizedBox(height: 16),
                      Text("My Journey in Tech", style: textTheme.displayMedium),
                      const SizedBox(height: 16),
                      // Divider
                      Container(
                        height: 2,
                        width: 60,
                        color: colors.primary.withOpacity(0.3),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "My interest in tech and computer science has been a constant since my childhood. I first discovered how endlessly fascinating technology was when I joined a FIRST robotics team in Junior High. FIRST robotics became the focus of my life until college and was the reason I decided to pursue computer science as my major. From the start, I gravitated towards the programming side of things and made it my speciality. With my dad as my mentor and teacher I learned my first language (Java) and year by year progressively pushed into more and more advanced programing techniques as my team and I chased ways to get just one more leg up on our competition. By the time I headed to college I had developed a home-grown dynamic and modularly programmable vector-pursuit autonomous navigation system for our robot. The vector pursuit algorithm let the robot decide for itself the best way to reach its destination on the field and the modularity of how I programmed in the paths let me adapt what the robot did on the fly between matches at competitions. I found incredible fulfilment in leading my team's software efforts while also collaborating on the mechanical and electrical sides of the robot. This hybrid of worlds is where I felt truly at home, programming for a robot I had helped build from the ground up.",
                        style: textTheme.titleMedium,
                      ),
                      const SizedBox(height: 20),
                      // Divider
                      Container(
                        height: 2,
                        width: 60,
                        color: colors.primary.withOpacity(0.3),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "In college I learned that for all my focus on one application of computer science there were so so many other avenues to discover. I jumped headfirst into website and multiplatform app development with HTML, Javascript, Flutter, Swift, and more; I learned how to build SQL databases and integrate them to provide the information backbone that so much of our digital world could not function without; and throughout it all discovering the power of AI and the foundational keystones to the image and text generators that in my freshman year was unheard of and now as I graduate is almost synonymous with using the internet itself.",
                        style: textTheme.titleMedium,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                //EXPERIENCE SECTION
                Container(
                  key: experienceSectionKey,
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header section
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Portfolio", style: textTheme.displayLarge),
                            const SizedBox(height: 16),
                            Text("My Experience & Projects", style: textTheme.displayMedium),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Two-column layout for content
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left column - Experience
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: const [
                                ExperienceContainer(
                                  title: "Chevron Internship",
                                  date: "May 2023 - August 2023",
                                  content:
                                  "Designed and prototyped an automated feedback collection and processing app using the Microsoft Power Apps to enable smart and low-friction client feedback during Agile product development cycles.",
                                ),
                                ExperienceContainer(
                                  title: "Chevron Internship",
                                  date: "May 2022 - August 2022",
                                  content:
                                  "Established a process mining and governance model for the PSCM Process Mining initiative. Learned Power BI, Power Apps, Celonis, Process Advisor, and produced the op model workflow to action on bottlenecks identified via the process mining tools.",
                                ),
                                ExperienceContainer(
                                  title: "Copy Dr",
                                  date: "August 2021 - Present",
                                  content:
                                  "Customer service, print job intake, order processing, order finishing, weekend manager",
                                ),
                                ExperienceContainer(
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
                              children: const [
                                SectionContainer(
                                  title: "Portfolio Website",
                                  subHeader: "Always Ongoing :)",
                                  content: "Built a responsive portfolio website using Flutter (the one you're on! Poke around and see how you like it, this is my first full project using Flutter :). I used an object oriented approach for this site. Examples of this are custom container elements like the experience or project blocks are defined once and referenced as children to avoid duplicate code. My project showcase pages are all children of a template class so that I can quickly and easily expand what project or past experiences I can talk about.",
                                ),
                                SectionContainer(
                                  title: "Exam Check-in/out Webapp",
                                  subHeader: "Spring and Fall Semesters 2026",
                                  content: "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checking and checkout during exams. The following semester, spearheaded the testing and deployment of the app.",
                                  seeMoreDescrip: "Click here to see more about this project!",
                                  seeMoreLink: "/exam-checkin-showcase",
                                ),
                                SectionContainer(
                                  title: "FTC Robotics Scoring App",
                                  subHeader: "Fall '26 Semester to Current Day",
                                  content: "Created an iOS App for FTC Robotics team Thunderbolts in Disguise to be able to record and analyse their own performance throughout the season and also to download and analyze other teams' performances live during competitions using the FTC Event API. Started as a class project but I kept developing it past the end of the class for the team.",
                                  seeMoreDescrip: "Click here to see more about this project!",
                                  seeMoreLink: "/ftc-decode-scoring-showcase",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                // CONTACT ME SECTION
                Container(
                  key: contactSectionKey,
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact Me", style: textTheme.displayLarge),
                      const SizedBox(height: 16),
                      Text("Let's Connect", style: textTheme.displayMedium),
                      const SizedBox(height: 16),
                      Text("Ready to collaborate and build something great", style: textTheme.titleLarge),
                      const SizedBox(height: 20),
                      // Divider
                      Container(
                        height: 2,
                        width: 60,
                        color: colors.primary.withOpacity(0.3),
                      ),
                      const SizedBox(height: 20),

                      // Contact Information
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: colors.surface,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: colors.outline.withOpacity(0.2),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Email
                            Row(
                              children: [
                                Icon(Icons.email_outlined, color: colors.primary, size: 28),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Email", style: textTheme.headlineMedium),
                                      const SizedBox(height: 8),
                                      Text("bayledgeacademy@icloud.com", style: textTheme.titleMedium),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 20),

                            // LinkedIn
                            Row(
                              children: [
                                Icon(Icons.business_outlined, color: colors.primary, size: 28),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("LinkedIn", style: textTheme.headlineMedium),
                                      const SizedBox(height: 8),
                                      Text("linkedin/in/andrew-lee-sbf", style: textTheme.titleMedium),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 20),

                            // GitHub
                            Row(
                              children: [
                                Icon(Icons.alternate_email, color: colors.primary, size: 28),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Git", style: textTheme.headlineMedium),
                                      const SizedBox(height: 8),
                                      Text("github.com/TaisharTexas", style: textTheme.titleMedium),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Additional message
                      Text(
                        "I'm always interested in discussing new opportunities, collaborating on projects, or just having a good conversation about technology and innovation. Don't hesitate to reach out!",
                        style: textTheme.titleMedium,
                      ),
                    ],
                  ),
                )
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

  static void scrollToContactSection() {
    final context = contactSectionKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }
}