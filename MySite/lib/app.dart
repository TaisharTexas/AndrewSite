import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'widgets/footer.dart';
import 'pages/home_page.dart';
import 'pages/page_in_progress.dart';
import 'pages/sdp_showcase_page.dart';
import 'pages/ftc_decode_scoring_showcase.dart';
import 'pages/exam_checkin_showcase.dart';
import '../responsive_layout.dart';
import 'theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Portfolio',
        theme: AppTheme.lightTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const MainScaffold(child: HomePage()),
          '/page-in-progress': (context) => const MainScaffold(child: PageInProgressScreen()),
          '/exam-checkin-showcase': (context) => const MainScaffold(child: ExamCheckinShowcase()),
          '/ftc-decode-scoring-showcase': (context) => const MainScaffold(child: FtcDecodeScoringShowcase()),
        }
    );
  }
}

// has new footer (stick for desktop, natural flow for mobile)
class MainScaffold extends StatelessWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});
  // final int navBarHeight_desktop = 100;
  // final int navBarHeight_mobile = 60;

  // Gradient container wrapper
  Widget gradientWrapper(Widget content) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.gradient2.withOpacity(0.95),
            AppColors.gradient1,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: content,
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentPage = ModalRoute.of(context)?.settings.name ?? '/';
    final isMobile = ResponsiveLayout.isMobile(context);

    if (isMobile) {
      // Mobile: footer flows with content
      return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Navbar(
            currentPage: currentPage,
            onNavTap: (route) {
              if (route != currentPage) {
                Navigator.pushNamedAndRemoveUntil(context, route, (r) => false);
              }
            },
          ),
        ),
        body: gradientWrapper(
          Column(
            children: [
              SizedBox(height: 40),
              Expanded(child: child), // main content
              const Footer(),         // footer at bottom of scrollable content
            ],
          ),
        ),
        drawer: Drawer(
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
                  child: Text(
                    'Check out me and my site!',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                _DrawerTile(
                  title: 'Home',
                  route: '/',
                  context: context,
                  currentPage: currentPage,
                ),
                _DrawerTile(
                  title: 'About',
                  route: '/',
                  context: context,
                  currentPage: currentPage,
                ),
                _DrawerTile(
                  title: 'Experience',
                  route: '/',
                  context: context,
                  currentPage: currentPage,
                ),
                _DrawerTile(
                  title: 'Contact',
                  route: '/',
                  context: context,
                  currentPage: currentPage,
                ),
              ],
            ),
          ),
        ),
      );
    }
    else {
      // Desktop: navbar over gradient content
      const double navbarHeight = 100; // desktop navbar height
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Gradient page content with footer
            gradientWrapper(
              Padding(
                padding: const EdgeInsets.only(top: 56), // padding for navbar height
                child: Column(
                  children: [
                    Expanded(child: child),
                    // const Footer(),
                  ],
                ),
              ),
            ),

            // Navbar overlay
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: PreferredSize(
                preferredSize: Size.fromHeight(navbarHeight), // use your variable
                child: Navbar(
                  currentPage: currentPage,
                  onNavTap: (route) {
                    if (route != currentPage) {
                      Navigator.pushNamedAndRemoveUntil(context, route, (r) => false);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}

class _DrawerTile extends StatelessWidget {
  final String title;
  final String route;
  final BuildContext context;
  final String currentPage;

  const _DrawerTile({
    required this.title,
    required this.route,
    required this.context,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = currentPage == route;
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onSurface,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: () {
        Navigator.pop(context); // close drawer

        if (route == '/') {
          // Navigate home first if not already there
          final currentRoute = ModalRoute.of(context)?.settings.name;
          if (currentRoute != '/') {
            Navigator.pushNamedAndRemoveUntil(context, '/', (r) => false).then((_) {
              Future.delayed(const Duration(milliseconds: 100), () {
                _scrollToSection(title);
              });
            });
          } else {
            _scrollToSection(title);
          }
        } else if (route != currentPage) {
          Navigator.pushNamedAndRemoveUntil(context, route, (r) => false);
        }
      },
    );
  }

  void _scrollToSection(String label) {
    switch (label) {
      case 'Home':
        HomePage.scrollToHomeSection();
        break;
      case 'About':
        HomePage.scrollToAboutSection();
        break;
      case 'Experience':
        HomePage.scrollToExperienceSection();
        break;
      case 'Contact':
        HomePage.scrollToContactSection();
        break;
    }
  }
} //: end scroll to section func