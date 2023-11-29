import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: Scaffold(
      appBar: AppBar(title: const Text("Cervejas")),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columns: [
              DataColumn(label: Text('Nome')),
              DataColumn(label: Text('Estilo')),
              DataColumn(label: Text('IBU')),
            ], 
            rows: [
              DataRow(cells: [
                DataCell(Text('La Fin Du Monde')),
                DataCell(Text('Bock')),
                DataCell(Text('65')),
              ]),
              DataRow(cells: [
                DataCell(Text('Sapporo Premium')),
                DataCell(Text('Sour Ale')),
                DataCell(Text('54')),
              ]),
              DataRow(cells: [
                DataCell(Text('Duvel')),
                DataCell(Text('Pilsner')),
                DataCell(Text('82')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja1')),
                DataCell(Text('Genérico')),
                DataCell(Text('01')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja2')),
                DataCell(Text('Genérico')),
                DataCell(Text('02')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja3')),
                DataCell(Text('Genérico')),
                DataCell(Text('03')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja4')),
                DataCell(Text('Genérico')),
                DataCell(Text('04')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja5')),
                DataCell(Text('Genérico')),
                DataCell(Text('05')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja6')),
                DataCell(Text('Genérico')),
                DataCell(Text('06')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja7')),
                DataCell(Text('Genérico')),
                DataCell(Text('07')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja8')),
                DataCell(Text('Genérico')),
                DataCell(Text('08')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja9')),
                DataCell(Text('Genérico')),
                DataCell(Text('09')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja10')),
                DataCell(Text('Genérico')),
                DataCell(Text('10')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja11')),
                DataCell(Text('Genérico')),
                DataCell(Text('11')),
              ]),
              DataRow(cells: [
                DataCell(Text('Cerveja12')),
                DataCell(Text('Genérico')),
                DataCell(Text('12')),
              ]),
            ]
          )
        ),
      ),
      bottomNavigationBar: const Text("Botão 1"),      
    ),
  );
  runApp(app);
}