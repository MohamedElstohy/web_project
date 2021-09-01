import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/constants/controllers.dart';
import 'package:web_project/helpers/responsiveness.dart';
import 'package:web_project/pages/clients/widgets/clients_table.dart';
import 'package:web_project/widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
                ),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              )
            ],
          )
        ),

        Expanded(
          child: ListView(
            children: [
              ClientsTable()
            ],
          )
        )
      ],
    );
  }
}