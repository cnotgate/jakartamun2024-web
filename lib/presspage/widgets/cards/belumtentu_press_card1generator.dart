import 'package:flutter/material.dart';
import 'package:jakartamun_web/adminpage/detailpage.dart';
import 'package:jakartamun_web/frontpage/frontpage.dart';

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
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: 1200,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: const [
                    DataColumn(
                        label: Text(
                      'Delegation',
                    )),
                    DataColumn(label: Text('Fullname')),
                    DataColumn(label: Text('Email')),
                    DataColumn(label: Text('Payment')),
                  ],
                  rows: data.map((row) {
                    return DataRow(
                      cells: [
                        DataCell(Container(
                          constraints:
                              const BoxConstraints(minWidth: 0, maxWidth: 200),
                          child: Text(
                            row['delegation']!,
                          ),
                        )),
                        DataCell(Container(
                          constraints:
                              const BoxConstraints(minWidth: 0, maxWidth: 200),
                          child: Text(row['fullname']!),
                        )),
                        DataCell(Container(
                          constraints:
                              const BoxConstraints(minWidth: 0, maxWidth: 200),
                          child: Text(row['email']!),
                        )),
                        DataCell(
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: row['payment'] == 'approved'
                                  ? Colors.greenAccent
                                  : Colors.redAccent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              row['payment']!,
                              style: row['payment'] == 'approved'
                                  ? const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    )
                                  : const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                            ),
                          ),
                        ),
                      ],
                      onSelectChanged: (isSelected) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(id: row['id']!),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), // Add border color
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  showCheckboxColumn: false,
                  dataTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                  headingTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Future<List<Map<String, String>>> fetchData(String id) async {
    // Replace this with your actual data fetching logic based on 'id'
    await Future.delayed(
        const Duration(seconds: 2)); // Simulating a network request delay
    return [
      {
        "imageLink":
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/bdfc/live/6fd5bc30-9a7a-11ee-ae24-71cd4a861931.jpg",
        "title":
            "Perang Israel-Gaza: Harga perdamaian bagi Israel dan Palestina",
      }
      {
        "imageLink":
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/bdfc/live/6fd5bc30-9a7a-11ee-ae24-71cd4a861931.jpg",
        "title":
            "Perang Israel-Gaza: Harga perdamaian bagi Israel dan Palestina",
      }
      {
        "imageLink":
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/bdfc/live/6fd5bc30-9a7a-11ee-ae24-71cd4a861931.jpg",
        "title":
            "Perang Israel-Gaza: Harga perdamaian bagi Israel dan Palestina",
      }
    ];
  }
}
