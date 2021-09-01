import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_project/constants/style.dart';
import 'package:web_project/widgets/custom_text.dart';

/// Example without datasource
class DriversTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,6),
            color: lightGrey.withOpacity(0.1),
            blurRadius: 12
          )
        ],
        border: Border.all(color: lightGrey,width: 0.5)
      ),
      child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: [
            DataColumn2(
              label: Text('Name'),
              size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('Location'),
            ),
            DataColumn(
              label: Text('Rating'),
            ),
            DataColumn(
              label: Text('Action'),
            ),
          ],
          rows: List<DataRow>.generate(
              7,
              (index) => DataRow(
                cells: [
                  DataCell(CustomText(text: 'Mohamed Elstohy',)),
                  DataCell(CustomText(text: 'Al-Mahalla Al-Kubra',)),
                  DataCell(
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star, 
                          color: Colors.deepOrange,
                        ),
                        SizedBox(width: 5),
                        CustomText(text: '4.$index')
                      ],
                    )
                  ),
                  DataCell(
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: active,
                          width: 0.5
                        ),
                        color: light,
                        borderRadius: BorderRadius.circular(20)
                      ),  
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                      child: CustomText(
                        text: 'Block Driver',
                        color: active.withOpacity(0.7),
                        weight: FontWeight.bold,
                      ),
                    )
                  )
                ]
              )     
          )
      ),
    );
  }
}