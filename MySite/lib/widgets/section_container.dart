import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final String title;
  final String content;

  const SectionContainer({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 12),
            Text(content, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}