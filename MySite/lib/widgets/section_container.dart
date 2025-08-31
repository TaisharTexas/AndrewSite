import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final String title;
  final String content;
  final String? seeMoreLink;
  final String? seeMoreDescrip;

  const SectionContainer({super.key, required this.title, required this.content, this.seeMoreLink, this.seeMoreDescrip});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.headlineMedium?.copyWith(
                  color: colors.primary, // use primary for emphasis
                ),
              ),
              const SizedBox(height: 12),
              Text(
                content,
                style: textTheme.bodyLarge?.copyWith(
                  color: colors.onSurface, // ensures contrast against surface
                ),
              ),
              if (seeMoreLink != null && seeMoreDescrip != null) ...[
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, seeMoreLink!);
                  },
                  child: Text(
                    seeMoreDescrip!,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colors.secondary,
                      decoration: TextDecoration.underline,
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