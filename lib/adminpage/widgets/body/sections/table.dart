import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<TablePage> {
  late Future<List<Map<String, String>>> _dataFuture;
  Map<String, String>? _selectedRow;

  @override
  void initState() {
    super.initState();
    _dataFuture = fetchData();
  }

  Future<List<Map<String, String>>> fetchData() async {
    // Replace this with your actual asynchronous data-fetching logic
    await Future.delayed(const Duration(seconds: 2));
    return [
      {'id': '1', 'name': 'John Doe', 'age': '25'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},
      {'id': '2', 'name': 'Jane Doe', 'age': '30'},

      // Add more data as needed
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, String>>>(
      future: _dataFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          List<Map<String, String>> data = snapshot.data!;
          return DataTable(
            columns: const [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Age')),
            ],
            rows: data.map((row) {
              return DataRow(
                cells: [
                  DataCell(Text(row['id']!)),
                  DataCell(Text(row['name']!)),
                  DataCell(Text(row['age']!)),
                ],
                onSelectChanged: (isSelected) {
                  setState(() {
                    _selectedRow = isSelected! ? row : null;
                  });
                },
              );
            }).toList(),
          );
        }
      },
    );
  }
}
