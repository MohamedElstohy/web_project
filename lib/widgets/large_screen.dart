import 'package:flutter/material.dart';
import 'package:web_project/helpers/local_navigator.dart';
import 'package:web_project/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: SideMenu()
          ),

          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: localNavigator()
            )
          ),
        ],
      );
  }
}