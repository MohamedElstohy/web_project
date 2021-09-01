import 'package:flutter/material.dart';
import 'package:web_project/helpers/responsiveness.dart';
import 'package:web_project/widgets/horizontal_menu_item.dart';
import 'package:web_project/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomScreen(context))
      return VerticalMenuItem(itemName: itemName,onTap: onTap,);

    return HorizontalMenuItem(itemName: itemName,onTap: onTap,);
  }
}