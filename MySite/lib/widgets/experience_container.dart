import 'package:flutter/material.dart';

class ExperienceContainer extends StatelessWidget {
  final String title;
  final String date;
  final String content;

  const ExperienceContainer({super.key, required this.title, required this.date, required this.content});

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
              // Title
              Text(title, style: textTheme.headlineMedium?.copyWith(color: colors.primary,),),
              const SizedBox(height: 4),
              // Date
              Text(date, style: textTheme.bodyMedium?.copyWith(color: colors.secondary,),),
              const SizedBox(height: 8),
              // Content
              Text(content, style: textTheme.bodyLarge?.copyWith(color: colors.onSurface,),),
            ],
          ),
        ),
      ),
    );
  }
}