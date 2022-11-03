import 'package:flutter/material.dart';

class Tableview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: DataTable(columns: const [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Place")),
            DataColumn(label: Text("Job")),
          ], rows: const [
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),
            DataRow(cells: [
              DataCell(Text('Adam')),
              DataCell(Text('20')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('Dev'))
            ]),





          ]),
        ),
      ),
    );
  }
}
