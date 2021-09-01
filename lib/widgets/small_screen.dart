import 'package:flutter/material.dart';
import 'package:web_project/helpers/local_navigator.dart';

class SmallScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: localNavigator()
    );
  }
}