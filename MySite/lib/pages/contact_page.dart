import 'package:flutter/material.dart';
import '../responsive_layout.dart';
import '../widgets/section_container.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ListView(
        children: const [
          SectionContainer(
            title: "Contact",
            content: "📧 Email: yourname@email.com\n🔗 LinkedIn: linkedin.com/in/yourprofile\n🐦 Twitter: @yourhandle",
          ),
        ],
      ),
      desktop: Center(
        child: SizedBox(
          width: 600,
          child: SectionContainer(
            title: "Contact",
            content: "📧 Email: yourname@email.com\n🔗 LinkedIn: linkedin.com/in/yourprofile\n🐦 Twitter: @yourhandle",
          ),
        ),
      ),
    );
  }
}