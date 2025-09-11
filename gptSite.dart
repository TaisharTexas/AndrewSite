import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF11121A),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white70),
        ),
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _workKey = GlobalKey();
  final GlobalKey _photographyKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // NAVBAR
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            color: const Color(0xFF0D0E14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Robin.W",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    _navButton("Experience", _experienceKey),
                    _navButton("Work", _workKey),
                    _navButton("Photography", _photographyKey),
                    _navButton("Contact", _contactKey),
                  ],
                )
              ],
            ),
          ),

          // SCROLLING CONTENT
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // HERO SECTION
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 80),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // LEFT IMAGE
                        Container(
                          width: 350,
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/profile.jpg"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 60),

                        // RIGHT TEXT
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "I'92m Robin Williams.nA Product Designernbased in Italy.",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  height: 1.3,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "I'92m probably the most passionate designer you will ever get to work with. "
                                "If you have a great project that needs some amazing skills, I'92m your guy.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // EXPERIENCE SECTION
                  _section(
                    key: _experienceKey,
                    title: "Work Experience",
                    content: "Companies I have worked...",
                  ),

                  // WORK SECTION
                  _section(
                    key: _workKey,
                    title: "My Work",
                    content: "Some amazing projects I'92ve done...",
                  ),

                  // PHOTOGRAPHY SECTION
                  _section(
                    key: _photographyKey,
                    title: "Photography",
                    content: "Capturing the world through my lens...",
                  ),

                  // CONTACT SECTION
                  _section(
                    key: _contactKey,
                    title: "Contact Me",
                    content: "Let'92s work together on your next big idea!",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navButton(String text, GlobalKey key) {
    return TextButton(
      onPressed: () => _scrollToSection(key),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white70),
      ),
    );
  }

  Widget _section({required GlobalKey key, required String title, required String content}) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 14,
              color: Colors.blueGrey,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}