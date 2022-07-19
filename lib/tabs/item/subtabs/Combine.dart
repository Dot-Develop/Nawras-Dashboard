import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_dashboard/utils/color_constants.dart';
import 'package:nawras_dashboard/utils/text_style.dart';
import 'package:nawras_dashboard/widgets/RoundedButton.dart';
import 'package:nawras_dashboard/widgets/search_widget.dart';

class CombineItemTab extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SearchWidget(searchController),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.all(8),
            width: 200,
            child: RoundedButton(
                title: "Add Combine", isThikHeight: true, onPressed: () {}),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: DataTable(
            headingTextStyle: AppTextStyle.boldTitle18
                .copyWith(color: PaletteColors.blackAppColor),
            dataTextStyle: AppTextStyle.regularTitle14
                .copyWith(color: PaletteColors.blackAppColor),
            columnSpacing: 40,
            headingRowHeight: 100,
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  '#Number',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Item Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Combine',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Bar Code',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Numberical Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Works',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Mohit')),
                  DataCell(Text('Mohit')),
                  DataCell(Text('Mohit')),
                  DataCell(Text('Mohit')),
                  DataCell(Text('23')),
                  DataCell(Text('Associate Software Developer')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Akshay')),
                  DataCell(Text('Akshay')),
                  DataCell(Text('Akshay')),
                  DataCell(Text('Akshay')),
                  DataCell(Text('25')),
                  DataCell(Text('Software Developer')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deepak')),
                  DataCell(Text('29')),
                  DataCell(Text('Team Lead ')),
                  DataCell(Text('Team Lead ')),
                  DataCell(Text('Team Lead ')),
                  DataCell(Text('Team Lead ')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deepak')),
                  DataCell(Text('29')),
                  DataCell(Text('Team Lead ')),
                  DataCell(Text('Team Lead ')),
                  DataCell(Text('Team Lead ')),
                  DataCell(Text('Team Lead ')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('29')),
                  DataCell(Text('Team Lead ')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('29')),
                  DataCell(Text('Team Lead ')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('Deepak')),
                  DataCell(Text('29')),
                  DataCell(Text('Team Lead ')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
