import 'package:flutter/material.dart';

class TableData extends StatefulWidget {
  const TableData({super.key});

  @override
  State<TableData> createState() => _TableDataState();
}

class _TableDataState extends State<TableData> {
  bool visibilityTableRow = true;
  void _changed() {
    setState(() {
      if (visibilityTableRow) {
        visibilityTableRow = false;
      } else {
        visibilityTableRow = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(14)),
      child: Stack(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  'JABODETABEK 19/45',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              DataTable(
                columnSpacing: 40,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'CDD',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'TR',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'JB',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'BU',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'WB',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'TRL',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
                rows: visibilityTableRow
                    ? <DataRow>[
                        const DataRow(
                          cells: <DataCell>[
                            DataCell(Text('9')),
                            DataCell(Text('19')),
                            DataCell(Text('21')),
                            DataCell(Text('9')),
                            DataCell(Text('19')),
                            DataCell(Text('21')),
                          ],
                        ),
                        const DataRow(
                          cells: <DataCell>[
                            DataCell(Text('9')),
                            DataCell(Text('19')),
                            DataCell(Text('21')),
                            DataCell(Text('9')),
                            DataCell(Text('19')),
                            DataCell(Text('21')),
                          ],
                        ),
                        //
                      ]
                    : <DataRow>[],
              ),
            ],
          ),
          visibilityTableRow
              ? Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    iconSize: MediaQuery.of(context).size.height * 0.04,
                    icon: const Icon(Icons.expand_less),
                    onPressed: () => _changed(),
                  ),
                )
              : Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    iconSize: MediaQuery.of(context).size.height * 0.04,
                    icon: const Icon(Icons.expand_more),
                    onPressed: () => _changed(),
                  ),
                ),
        ],
      ),
    );
  }
}
