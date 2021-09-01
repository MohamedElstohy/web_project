import 'package:flutter/material.dart';

import 'package:web_project/helpers/responsiveness.dart';
import 'package:web_project/widgets/large_screen.dart';
import 'package:web_project/widgets/small_screen.dart';
import 'package:web_project/widgets/top_nav.dart';

import 'widgets/side_menu.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}