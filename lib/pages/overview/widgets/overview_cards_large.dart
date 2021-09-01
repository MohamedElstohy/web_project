import 'package:flutter/material.dart';
import 'package:web_project/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: 'Rides in progress',
          value: '7',
          onTap: (){},
          topColor: Colors.orange,
        ),

        SizedBox(width: _width/64),

        InfoCard(
          title: 'Packages delivered',
          value: '17',
          onTap: (){},
          topColor: Colors.lightGreen,
        ),

        SizedBox(width: _width/64),

        InfoCard(
          title: 'Cancelled delivery',
          value: '3',
          onTap: (){},
          topColor: Colors.red,
        ),

        SizedBox(width: _width/64),

        InfoCard(
          title: 'Scheduled deliveries',
          value: '3',
          onTap: (){},
        ),

      ],
    );
  }
}