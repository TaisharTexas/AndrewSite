import 'package:flutter/material.dart';

class PageInProgressScreen extends StatelessWidget {
  const PageInProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Page in progress',
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}