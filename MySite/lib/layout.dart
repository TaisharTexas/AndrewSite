import 'package:flutter/material.dart';
import 'package:mysite/helpers/responsiveness.dart';
import 'package:mysite/widgets/large_screen.dart';
import 'package:mysite/widgets/side_menu.dart';
import 'package:mysite/widgets/small_screen.dart';
import 'package:mysite/widgets/top_navbar.dart';

class SiteLayout extends StatelessWidget {
  // const SiteLayout({ Key? key }) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: SideMenu(),
      body: Row(
        children: [
          if (!ResponsiveWidget.isSmallScreen(context))
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
          Expanded(
            flex: 5,
            child: ResponsiveWidget(
              largeScreen: LargeScreen(),
              smallScreen: SmallScreen(),
            ),
          ),
        ],
      ),
      // body: ResponsiveWidget(
      //   largeScreen: LargeScreen(),
      //   smallScreen: SmallScreen(),
      // ),
    );
  }
}