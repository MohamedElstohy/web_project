import 'package:flutter/material.dart';
import 'package:web_project/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function onTap;

  const InfoCard({
    this.title, 
    this.value, 
    this.topColor, 
    this.isActive = false, 
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0,6),
                color: lightGrey.withOpacity(0.1),
                blurRadius: 12
              )
            ],
            borderRadius: BorderRadius.circular(8)
          ),

          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: topColor ?? active,
                      height: 5,
                    ),
                  ),
                ],
              ),

              Expanded(
                child: Container()
              ),

              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                        color: isActive ? active : lightGrey,
                        fontSize: 16
                      )
                    ),

                    TextSpan(
                      text: '$value',
                      style: TextStyle(
                        color: isActive ? active : dark,
                        fontSize: 40
                      )
                    )
                  ]
                )
              ),

              Expanded(
                child: Container()
              ),
            ],
          ),
        ),
      ),
    );
  }
}