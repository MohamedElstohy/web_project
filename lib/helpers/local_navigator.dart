import 'package:flutter/material.dart';
import 'package:web_project/constants/controllers.dart';
import 'package:web_project/routing/router.dart';
import 'package:web_project/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);