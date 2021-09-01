import 'package:flutter/material.dart';
import 'package:web_project/constants/style.dart';
import 'package:web_project/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context , GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0.0,
      leading: !ResponsiveWidget.isSmallScreen(context) 
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    'assets/icons/logo.png',
                    width: 28 ,
                  ),
                )
              ],
            ) 
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => key.currentState.openDrawer(),
            ),
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: 'Dashboard',
              color: lightGrey,
              size: 20,
              weight: FontWeight.bold,
            )
          ),
          
          Expanded(child: Container()),
          
          IconButton(
            icon: Icon(Icons.settings,color: dark.withOpacity(0.7),), 
            onPressed: (){}
          ),
          
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications,color: dark.withOpacity(0.7),), 
                onPressed: (){}
              ),
              Positioned(
                top: 7,
                right: 7,
                child:  Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2 , color: light),
                    color: active
                  ),
                ),
              )
            ]
          ),

          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),

          SizedBox(width: 24),

          CustomText(
            text: 'Mohamed Mostafa',
            color: lightGrey,
          ),

          SizedBox(width: 16),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),

      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );