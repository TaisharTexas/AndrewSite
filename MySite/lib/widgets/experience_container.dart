import 'package:flutter/material.dart';

class ExperienceContainer extends StatelessWidget {
  final String title;
  final String date;
  final String content;

  const ExperienceContainer({super.key, required this.title, required this.date, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(title, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 4),
            // Date
            Text(date, style: TextStyle(fontSize: 14, color: Colors.grey[600],),),
            const SizedBox(height: 8),
            // Content
            Text(content, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}