import 'package:flutter/material.dart';
import 'showcase_page_template.dart';


class FtcDecodeScoringShowcase extends StatelessWidget {
  const FtcDecodeScoringShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return ShowcasePage(
      title: "FTC Decode Scoring and Performance Analysis App",
      problem: "Needed a way to score and record team matches for the FIRST Tech Challenge 2025-26 season 'Decode'. Teams need a way to both analyze past performances for self improvement but also look through other teams' performances to make the best informed decisions possible when planning for a match and also for alliance selections. Currently the only solution the team had was to use pen and paper to manually collect all the match data. Dealing with the large amounts of paper match reports at a competition during the break between the qualifying and elimination blocks is error prone and clumsy.",
      solution: "Built a custom IOS app with Swift for team #18140 Thunderbolts in Disguise. The app lets the team easily record their own matches during practices and at competitions. These match records are saved to local storage and the app can produce an analysis report on your own performance to show where you're strong and weak and also give concrete insights into the historical reliability and scoring consistency of the robot. The app also connects to the FTC Event API which is updated live during an event so the team can also analyze and research other teams live at competitions.",
      videoId: "jgyShFzdB_Q",
      galleryImages: [
        'assets/images/gallery/iosApp/Mockup.png',
        'assets/images/gallery/iosApp/Wireframes.png',
        'assets/images/gallery/iosApp/Settings.png',
        'assets/images/gallery/iosApp/ScoreScreen1.png',
        'assets/images/gallery/iosApp/ScoreScreen2.png',
        'assets/images/gallery/iosApp/TeamData1.png',
        'assets/images/gallery/iosApp/TeamData2.png',
        'assets/images/gallery/iosApp/SearchTeams1.png',
        'assets/images/gallery/iosApp/SearchTeams2.png',
        'assets/images/gallery/iosApp/SearchTeams3.png',
        'assets/images/gallery/iosApp/SearchTeams4.png',
        'assets/images/gallery/iosApp/SearchEvent1.png',
        'assets/images/gallery/iosApp/SearchEvent2.png',
        'assets/images/gallery/iosApp/SearchEvent3.png',
        'assets/images/gallery/iosApp/SearchEvent4.png',
        'assets/images/gallery/iosApp/SearchEvent5.png',
        'assets/images/gallery/iosApp/SearchEvent6.png'
      ],
      pdfPath: 'assets/files/FTC Scorer Project Writeup.pdf',
      githubUrl: 'https://github.com/TaisharTexas/COSC4355/tree/main/FTC_Scoring',
    );
  }
}