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
      videoId: "e-tLzFFM11A",
      videoDetail: "Note: for testing purposes the app is running on local host and connects to the DB (which is running on a rented aws server) via an SSH tunnel.",
      galleryImages: [
        'assets/images/gallery/sdpWebApp/loginView.png',
        'assets/images/gallery/sdpWebApp/courseView.png',
        'assets/images/gallery/sdpWebApp/studentRosterView.png',
        'assets/images/gallery/sdpWebApp/examView.png',
        'assets/images/gallery/sdpWebApp/studentCheckinView.png',
        'assets/images/gallery/sdpWebApp/manageAssignedTaView.png',
        'assets/images/gallery/sdpWebApp/personalInfoView.png'
      ],
      pdfPath: 'assets/files/SDP Final Report.pdf',
      githubUrl: 'https://github.com/TaisharTexas/SDP_ExamCheckInOut',
    );
  }
}