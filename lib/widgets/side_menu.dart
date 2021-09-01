import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import '../routing/routes.dart';
import 'custom_text.dart';
import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: _width/48),

                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset('assets/icons/logo.png'),
                    ),

                    Flexible(
                      child: CustomText(
                        text: 'Dash',
                        color: active,
                        size: 20,
                        weight: FontWeight.bold,
                      )
                    ),

                    SizedBox(width: _width /48)
                  ],
                ),
              ],
            ),

          SizedBox(height: 40),

          Divider(color: light.withOpacity(0.1),),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
            .map(
              (item) => SideMenuItem(
                itemName: item.name,
                onTap: (){
                  if(item.route == AuthenticationPageRoute){
                    menuController.changeActiveItemTo(OverViewPageDisplayName);
                    Get.offAll(AuthenticationPageRoute);
                  }
                  if(!menuController.isActive(item.name)){
                    menuController.changeActiveItemTo(item.name);
                    if(ResponsiveWidget.isSmallScreen(context))
                      Get.back();
                    navigationController.navigateTo(item.route);
                  }
                },
              )
            ).toList(),
          )
              
        ],
      ),
    );
  }
}