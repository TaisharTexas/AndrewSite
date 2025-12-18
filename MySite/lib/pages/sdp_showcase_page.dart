import 'package:flutter/material.dart';
import 'package:mysite/theme/app_theme.dart';
import '../widgets/section_container.dart';
import 'package:mysite/responsive_layout.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pdfx/pdfx.dart';


class SdpShowcasePage extends StatefulWidget {
  const SdpShowcasePage({super.key});

  @override
  State<SdpShowcasePage> createState() => _SdpShowcasePageState();
}

class _SdpShowcasePageState extends State<SdpShowcasePage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Extract video ID from YouTube URL
    _controller = YoutubePlayerController.fromVideoId(
      videoId: 'jgyShFzdB_Q',
      autoPlay: false,
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  // Helper method to show full-screen image
  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: InteractiveViewer(
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
        vertical: 24,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TITLE
              Text(
                "Exam Check-In/Out Web App",
                style: textTheme.displayLarge,
              ),
              const SizedBox(height: 16),

              // DESCRIPTION
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: SectionContainer(
                        title: "The Problem",
                        content: "We needed a way to quickly check-in/out students for exams to track time spent in the classroom (can compare afterwards to time spent in exam in Canvas). Taking in/out attendance by hand with a spreadsheet causes huge time delays at start and end of exam. Respondus Lockdown Browser as the only digital solution not liked by faculty or students and is a source of technical difficulties.",
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: SectionContainer(
                        title: "The Solution",
                        content: "Custom web app designed specifically for quick and seamless student attendance. It accepts UH ID card swipe, UH app QR code, or manual ID entry. This app lets multiple devices quickly and easily check students in and out with their physical ID's or Student Apps.",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // GitHub Link
              InkWell(
                onTap: () async {
                  final url = Uri.parse('https://github.com/TaisharTexas/SDP_ExamCheckInOut');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                child: Text(
                  "View codebase on GitHub →",
                  style: textTheme.titleMedium?.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Video Player
              Text(
                "Video Demo",
                style: textTheme.displayMedium,
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: YoutubePlayer(
                      controller: _controller,
                    ),
                  ),
                ),
              ), // end video player
              const SizedBox(height: 32),

              // PHOTO GALLERY SECTION
              Text(
                "Project Gallery",
                style: textTheme.displayMedium,
              ),
              const SizedBox(height: 16),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isMobile ? 2 : 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.2,
                ),
                itemCount: 7, // Replace with actual number of images
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Tap to view full-screen image
                      _showImageDialog(context, 'assets/images/gallery/showcase/IMG_${index + 1}.jpg');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/images/gallery/showcase/IMG_${index + 1}.jpg'), // Replace with your image paths
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 32),

              // PDF VIEWER SECTION
              Text(
                "Project Report",
                style: textTheme.displayMedium,
              ),
              const SizedBox(height: 16),

              // PDF Viewer - works on web
              Container(
                height: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.surface.withOpacity(0.3),
                    width: 2,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: PdfView(
                    controller: PdfController(
                      document: PdfDocument.openAsset('assets/files/SDP Final Report.pdf'),
                    ),
                    scrollDirection: Axis.vertical,
                  ),
                ),
              ), // end pdf viewer

            ],
          ),
        ),
      ),
    );
  }
}