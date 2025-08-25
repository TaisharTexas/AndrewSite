import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../widgets/experience_container.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(

      // MOBILE
      mobile: ListView(
        children: const [
          ExperienceContainer(
            title: "Chevron Internship",
            date: "May 2023 - August 2023",
            content: "Designed and prototyped an automated feedback collection and processing app using the Microsoft Power Apps to enable smart and low-friction client feedback during Agile product development cycles.",
          ),
          ExperienceContainer(
            title: "Chevron Internship",
            date: "May 2022 - August 2022",
            content: "Established a process mining and governance model for the PSCM Process Mining initiative. Learned Power BI, Power Apps, Celonis, Process Advisor, and produced the op model workflow to action on bottlenecks identified via the process mining tools.",
          ),
          ExperienceContainer(
            title: "Copy Dr",
            date: "August 2021 - Present",
            content: "Customer service, print job intake, order processing, order finishing, weekend manager",
          ),
          ExperienceContainer(
            title: "Apache Industrial Internship",
            date: "March 2020 - August 2020",
            content: "Helped design, manufacture, and program a human-assisted motorized sanitization cart.",
          ),
          SectionContainer(
            title: "Portfolio Website",
            content: "Built a responsive portfolio website using Flutter.",
          ),
          SectionContainer(
            title: "Exam Check-in/out Webapp",
            content: "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checkin and checkout during exams. The following semester, spearheaded the testing and deployement of the app.",
          ),
        ],
      ),

      //DESKTOP
      desktop: SingleChildScrollView(
        child: SizedBox(
          width: 1000,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: Column(
                  children: const [
                    // Padding(
                    //   padding: EdgeInsets.only(bottom: 12.0),
                    //   child: Text(
                    //     "Experience",
                    //     style: TextStyle(
                    //       fontSize: 22,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    ExperienceContainer(
                      title: "Chevron Internship",
                      date: "May 2023 - August 2023",
                      content: "Designed and prototyped an automated feedback collection and processing app using the Microsoft Power Apps to enable smart and low-friction client feedback during Agile product development cycles.",
                    ),
                    ExperienceContainer(
                      title: "Chevron Internship",
                      date: "May 2022 - August 2022",
                      content: "Established a process mining and governance model for the PSCM Process Mining initiative. Learned Power BI, Power Apps, Celonis, Process Advisor, and produced the op model workflow to action on bottlenecks identified via the process mining tools.",
                    ),
                    ExperienceContainer(
                      title: "Copy Dr",
                      date: "August 2021 - Present",
                      content: "Customer service, print job intake, order processing, order finishing, weekend manager",
                    ),
                    ExperienceContainer(
                      title: "Apache Industrial Internship",
                      date: "March 2020 - August 2020",
                      content: "Helped design, manufacture, and program a human-assisted motorized sanitization cart.",
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // Header
                    // Padding(
                    //   padding: EdgeInsets.only(bottom: 12.0),
                    //   child: Text(
                    //     "Projects",
                    //     style: TextStyle(
                    //       fontSize: 22,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    SectionContainer(
                      title: "Portfolio Website",
                      content: "Built a responsive portfolio website using Flutter.",
                    ),
                    SectionContainer(
                      title: "Exam Check-in/out Webapp",
                      content: "Alongside a student team, helped design and develop a web app and database running on a private server to enable rapid and flexible student checkin and checkout during exams. The following semester, spearheaded the testing and deployement of the app.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}