import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'widgets/footer.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/portfolio_page.dart';
import 'pages/contact_page.dart';
import '../responsive_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScaffold(child: HomePage()),
        '/about': (context) => const MainScaffold(child: AboutPage()),
        '/experience': (context) => const MainScaffold(child: PortfolioPage()),
        '/contact': (context) => const MainScaffold(child: ContactPage()),
      },
    );
  }
}

// has new footer (stick for desktop, natural flow for mobile)
class MainScaffold extends StatelessWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final currentPage = ModalRoute.of(context)?.settings.name ?? '/';
    final isMobile = ResponsiveLayout.isMobile(context);

    if (isMobile) {
      // Mobile: footer flows with content
      return Scaffold(
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
        body: Column(
          children: [
            Expanded(child: child), // main content
            const Footer(),         // footer at bottom of scrollable content
          ],
        ),
        drawer: Drawer(
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.indigo),
                  child: Text(
                    'Andrew Lee',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                _DrawerTile(title: 'Home', route: '/', context: context, currentPage: currentPage),
                _DrawerTile(title: 'About', route: '/about', context: context, currentPage: currentPage),
                _DrawerTile(title: 'Portfolio', route: '/experience', context: context, currentPage: currentPage),
                _DrawerTile(title: 'Resume', route: '/resume', context: context, currentPage: currentPage),
                _DrawerTile(title: 'Contact', route: '/contact', context: context, currentPage: currentPage),
              ],
            ),
          ),
        ),
      );
    } else {
      // Desktop: footer sticky
      return Scaffold(
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
        body: child,
        bottomNavigationBar: const Footer(),
      );
    }
  }
}

//Old footer
// class MainScaffold extends StatelessWidget {
//   final Widget child;
//   const MainScaffold({super.key, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     final currentPage = ModalRoute.of(context)?.settings.name ?? '/';
//     final isMobile = ResponsiveLayout.isMobile(context);
//
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60),
//         child: Navbar(
//           currentPage: currentPage,
//           onNavTap: (route) {
//             if (route != currentPage) {
//               Navigator.pushNamedAndRemoveUntil(context, route, (r) => false);
//             }
//           },
//         ),
//       ),
//       body: child,
//       bottomNavigationBar: const Footer(),
//       drawer: isMobile
//           ? Drawer(
//         child: SafeArea(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               const DrawerHeader(
//                 decoration: BoxDecoration(color: Colors.indigo),
//                 child: Text(
//                   'Andrew Lee',
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ),
//               ),
//               _DrawerTile(title: 'Home', route: '/', context: context, currentPage: currentPage),
//               _DrawerTile(title: 'About', route: '/about', context: context, currentPage: currentPage),
//               _DrawerTile(title: 'Portfolio', route: '/experience', context: context, currentPage: currentPage),
//               _DrawerTile(title: 'Resume', route: '/resume', context: context, currentPage: currentPage),
//               _DrawerTile(title: 'Contact', route: '/contact', context: context, currentPage: currentPage),
//             ],
//           ),
//         ),
//       )
//           : null,
//     );
//   }
// }

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
        style: TextStyle(color: isActive ? Colors.indigo : Colors.black),
      ),
      onTap: () {
        Navigator.pop(context); // close drawer
        if (route != currentPage) {
          Navigator.pushNamedAndRemoveUntil(this.context, route, (r) => false);
        }
      },
    );
  }
}