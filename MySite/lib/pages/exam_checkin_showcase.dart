import 'package:flutter/material.dart';
import 'showcase_page_template.dart';


class ExamCheckinShowcase extends StatelessWidget {
  const ExamCheckinShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return ShowcasePage(
      title: "Exam Check-In/Out Web App",
      problem: "We needed a way to quickly check-in/out students for exams to track time spent in the classroom (can compare afterwards to time spent in exam in Canvas). Taking in/out attendance by hand with a spreadsheet causes huge time delays at start and end of exam. Respondus Lockdown Browser as the only digital solution not liked by faculty or students and is a source of technical difficulties.",
      solution: "Custom web app designed specifically for quick and seamless student attendance. It accepts UH ID card swipe, UH app QR code, or manual ID entry. This app lets multiple devices quickly and easily check students in and out with their physical ID's or Student Apps.\n\nThe front end of the app was built as a Django Python project which we chose because it is a framework focused on web apps and because of how seamlessly it interacts with our chosen database. For the backend database stuff we used a MySQL database that we designed and that runs on the same server as the Django app.",
      videoId: "jgyShFzdB_Q",
      galleryImages: [
        'assets/images/gallery/showcase/IMG_1.JPG',
        'assets/images/gallery/showcase/IMG_2.JPG',
        'assets/images/gallery/showcase/IMG_3.JPG',
        'assets/images/gallery/showcase/IMG_4.JPG',
        'assets/images/gallery/showcase/IMG_5.JPG',
        'assets/images/gallery/showcase/IMG_6.JPG',
        'assets/images/gallery/showcase/IMG_7.JPG'
      ],
      pdfPath: 'assets/files/SDP Final Report.pdf',
      githubUrl: 'https://github.com/TaisharTexas/SDP_ExamCheckInOut',
    );
  }
}