import 'package:flutter/material.dart';
import 'package:mysite/theme/app_theme.dart';
import 'package:mysite/widgets/section_container.dart';
import 'package:mysite/responsive_layout.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pdfx/pdfx.dart';


class ShowcasePage extends StatefulWidget {
  final String title;
  final String problem;
  final String solution;
  final String videoId;
  final List<String> galleryImages;
  final String? pdfPath;
  final String? githubUrl;

  const ShowcasePage({
    super.key,
    required this.title,
    required this.problem,
    required this.solution,
    required this.videoId,
    required this.galleryImages,
    this.pdfPath,
    this.githubUrl,
  });

  @override
  State<ShowcasePage> createState() => _ShowcasePageState();
}

class _ShowcasePageState extends State<ShowcasePage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
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
                widget.title,
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
                        content: widget.problem,
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: SectionContainer(
                        title: "My Solution",
                        content: widget.solution,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // GitHub Link (only show if provided)
              if (widget.githubUrl != null) ...[
                InkWell(
                  onTap: () async {
                    final url = Uri.parse(widget.githubUrl!);
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
              ],

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
              ),
              const SizedBox(height: 32),

              // PHOTO GALLERY SECTION (only show if images provided)
              if (widget.galleryImages.isNotEmpty) ...[
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
                  itemCount: widget.galleryImages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _showImageDialog(context, widget.galleryImages[index]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(widget.galleryImages[index]),
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
              ],

              // PDF VIEWER SECTION (only show if PDF provided)
              if (widget.pdfPath != null) ...[
                Text(
                  "Project Report",
                  style: textTheme.displayMedium,
                ),
                const SizedBox(height: 16),

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
                        document: PdfDocument.openAsset(widget.pdfPath!),
                      ),
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}