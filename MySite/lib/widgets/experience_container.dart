import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ExperienceContainer extends StatelessWidget {
  final String title;
  final String date;
  final String content;

  const ExperienceContainer({super.key, required this.title, required this.date, required this.content});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: ContainerTextStyles.header),
            const SizedBox(height: 4),
            Text(date, style: ContainerTextStyles.subHeader),
            const SizedBox(height: 8),
            Text(content, style: ContainerTextStyles.body),
          ],
        ),
      ),
    );
  }
}