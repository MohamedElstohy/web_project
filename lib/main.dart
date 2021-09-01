import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/layout.dart';

import 'constants/style.dart';
import 'controllers/menu_controller.dart';
import 'controllers/navigation_controller.dart';
import 'pages/404/error_page.dart';
import 'pages/authentication/authentication.dart';
import 'routing/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp()); 
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
        name: 'not-found', 
        page: () => PageNotFound(),
        transition: Transition.fadeIn
      ),
      getPages: [
        GetPage(
          name: RootRoute, 
          page: () => SiteLayout()
        ),
        GetPage(
          name: AuthenticationPageRoute, 
          page: () => AuthenticationPage()
        ),
      ],

      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        primaryColor: Colors.blue,
        textTheme: GoogleFonts
            .mulishTextTheme(
              Theme.of(context).textTheme
            )
            .apply(
              bodyColor: Colors.black
            ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }
        ),
      ),
    );
  }
}