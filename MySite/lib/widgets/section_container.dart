import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SectionContainer extends StatelessWidget {
  final String title;
  final String content;
  final String? subHeader;
  final String? seeMoreLink;
  final String? seeMoreDescrip;

  const SectionContainer({
    super.key,
    required this.title,
    required this.content,
    this.subHeader,
    this.seeMoreLink,
    this.seeMoreDescrip
  });

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

            if (subHeader != null) Text(subHeader!, style: ContainerTextStyles.subHeader),


            const SizedBox(height: 8),
            Text(content, style: ContainerTextStyles.body),

            if (seeMoreLink != null && seeMoreDescrip != null) ...[
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, seeMoreLink!);
                },
                child: Text(seeMoreDescrip!, style: ContainerTextStyles.link.copyWith(decoration: TextDecoration.underline)),
              ),
            ],
          ],
        ),
      ),
    );
  }
}