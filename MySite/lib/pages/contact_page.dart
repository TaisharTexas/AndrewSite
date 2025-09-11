import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';
import '../theme/app_theme.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

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
              "Contact Me",
              style: AppColors.normHeadline,
            ),
            const SizedBox(height: 16),
            Text(
              "Let's Connect",
              style: AppColors.normHeadline2,
            ),
            const SizedBox(height: 16),
            Text(
              "Ready to collaborate and build something great",
              style: AppColors.bodyLargeLight,
            ),
            const SizedBox(height: 32),

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
                      Icon(
                        Icons.email_outlined,
                        color: colors.primary,
                        size: 24,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "yourname@email.com",
                              style: AppColors.bodyLargeLight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // LinkedIn
                  Row(
                    children: [
                      Icon(
                        Icons.business_outlined,
                        color: colors.primary,
                        size: 24,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LinkedIn",
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "linkedin.com/in/yourprofile",
                              style: AppColors.bodyLargeLight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Twitter
                  Row(
                    children: [
                      Icon(
                        Icons.alternate_email,
                        color: colors.primary,
                        size: 24,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Twitter",
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "@yourhandle",
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

            const SizedBox(height: 32),

            // Additional message
            Text(
              "I'm always interested in discussing new opportunities, collaborating on projects, or just having a good conversation about technology and innovation. Don't hesitate to reach out!",
              style: AppColors.bodyLargeLight,
            ),
          ],
        ),
      ),

      // DESKTOP - Centered layout
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
                    "Contact Me",
                    style: AppColors.normHeadline,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Let's Connect",
                    style: AppColors.normHeadline2,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Ready to collaborate and build something great",
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

                  // Contact Information
                  Container(
                    padding: const EdgeInsets.all(32),
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
                            Icon(
                              Icons.email_outlined,
                              color: colors.primary,
                              size: 28,
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email",
                                    style: textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "yourname@email.com",
                                    style: AppColors.bodyLargeLight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 32),

                        // LinkedIn
                        Row(
                          children: [
                            Icon(
                              Icons.business_outlined,
                              color: colors.primary,
                              size: 28,
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "LinkedIn",
                                    style: textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "linkedin.com/in/yourprofile",
                                    style: AppColors.bodyLargeLight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 32),

                        // Twitter
                        Row(
                          children: [
                            Icon(
                              Icons.alternate_email,
                              color: colors.primary,
                              size: 28,
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Twitter",
                                    style: textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "@yourhandle",
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

                  const SizedBox(height: 32),

                  // Additional message
                  Text(
                    "I'm always interested in discussing new opportunities, collaborating on projects, or just having a good conversation about technology and innovation. Don't hesitate to reach out!",
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