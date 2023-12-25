import 'package:flutter/material.dart';
import 'package:jakartamun_web/adminpage/detailpage.dart';
import 'package:jakartamun_web/frontpage/frontpage.dart';

class TablePageContent extends StatefulWidget {
  const TablePageContent({super.key});

  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<TablePageContent> {
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
 {
    'id': '1',
    'delegation': 'Universitas A',
    'fullname': 'John Doe',
    'email': 'John@gmail.com',
    'payment': "approved"
  },
  {
    'id': '2',
    'delegation': 'Universitas B',
    'fullname': 'Jane Doe',
    'email': 'Jane@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '3',
    'delegation': 'Universitas C',
    'fullname': 'Alice Smith',
    'email': 'Alice@gmail.com',
    'payment': "approved"
  },
  {
    'id': '4',
    'delegation': 'Universitas D',
    'fullname': 'Bob Johnson',
    'email': 'Bob@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '5',
    'delegation': 'Universitas E',
    'fullname': 'Eva Brown',
    'email': 'Eva@gmail.com',
    'payment': "approved"
  },
  {
    'id': '6',
    'delegation': 'Universitas F',
    'fullname': 'Charlie White',
    'email': 'Charlie@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '7',
    'delegation': 'Universitas G',
    'fullname': 'David Black',
    'email': 'David@gmail.com',
    'payment': "approved"
  },
  {
    'id': '8',
    'delegation': 'Universitas H',
    'fullname': 'Grace Miller',
    'email': 'Grace@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '9',
    'delegation': 'Universitas I',
    'fullname': 'Henry Davis',
    'email': 'Henry@gmail.com',
    'payment': "approved"
  },
  {
    'id': '10',
    'delegation': 'Universitas J',
    'fullname': 'Isabel Wilson',
    'email': 'Isabel@gmail.com',
    'payment': "not approved"
  },

 {
    'id': '1',
    'delegation': 'Universitas A',
    'fullname': 'John Doe',
    'email': 'John@gmail.com',
    'payment': "approved"
  },
  {
    'id': '2',
    'delegation': 'Universitas B',
    'fullname': 'Jane Doe',
    'email': 'Jane@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '3',
    'delegation': 'Universitas C',
    'fullname': 'Alice Smith',
    'email': 'Alice@gmail.com',
    'payment': "approved"
  },
  {
    'id': '4',
    'delegation': 'Universitas D',
    'fullname': 'Bob Johnson',
    'email': 'Bob@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '5',
    'delegation': 'Universitas E',
    'fullname': 'Eva Brown',
    'email': 'Eva@gmail.com',
    'payment': "approved"
  },
  {
    'id': '6',
    'delegation': 'Universitas F',
    'fullname': 'Charlie White',
    'email': 'Charlie@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '7',
    'delegation': 'Universitas G',
    'fullname': 'David Black',
    'email': 'David@gmail.com',
    'payment': "approved"
  },
  {
    'id': '8',
    'delegation': 'Universitas H',
    'fullname': 'Grace Miller',
    'email': 'Grace@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '9',
    'delegation': 'Universitas I',
    'fullname': 'Henry Davis',
    'email': 'Henry@gmail.com',
    'payment': "approved"
  },
  {
    'id': '10',
    'delegation': 'Universitas J',
    'fullname': 'Isabel Wilson',
    'email': 'Isabel@gmail.com',
    'payment': "not approved"
  },
{
    'id': '1',
    'delegation': 'Universitas A',
    'fullname': 'John Doe',
    'email': 'John@gmail.com',
    'payment': "approved"
  },
  {
    'id': '2',
    'delegation': 'Universitas B',
    'fullname': 'Jane Doe',
    'email': 'Jane@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '3',
    'delegation': 'Universitas C',
    'fullname': 'Alice Smith',
    'email': 'Alice@gmail.com',
    'payment': "approved"
  },
  {
    'id': '4',
    'delegation': 'Universitas D',
    'fullname': 'Bob Johnson',
    'email': 'Bob@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '5',
    'delegation': 'Universitas E',
    'fullname': 'Eva Brown',
    'email': 'Eva@gmail.com',
    'payment': "approved"
  },
  {
    'id': '6',
    'delegation': 'Universitas F',
    'fullname': 'Charlie White',
    'email': 'Charlie@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '7',
    'delegation': 'Universitas G',
    'fullname': 'David Black',
    'email': 'David@gmail.com',
    'payment': "approved"
  },
  {
    'id': '8',
    'delegation': 'Universitas H',
    'fullname': 'Grace Miller',
    'email': 'Grace@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '9',
    'delegation': 'Universitas I',
    'fullname': 'Henry Davis',
    'email': 'Henry@gmail.com',
    'payment': "approved"
  },
  {
    'id': '10',
    'delegation': 'Universitas J',
    'fullname': 'Isabel Wilson',
    'email': 'Isabel@gmail.com',
    'payment': "not approved"
  },

 {
    'id': '1',
    'delegation': 'Universitas A',
    'fullname': 'John Doe',
    'email': 'John@gmail.com',
    'payment': "approved"
  },
  {
    'id': '2',
    'delegation': 'Universitas B',
    'fullname': 'Jane Doe',
    'email': 'Jane@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '3',
    'delegation': 'Universitas C',
    'fullname': 'Alice Smith',
    'email': 'Alice@gmail.com',
    'payment': "approved"
  },
  {
    'id': '4',
    'delegation': 'Universitas D',
    'fullname': 'Bob Johnson',
    'email': 'Bob@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '5',
    'delegation': 'Universitas E',
    'fullname': 'Eva Brown',
    'email': 'Eva@gmail.com',
    'payment': "approved"
  },
  {
    'id': '6',
    'delegation': 'Universitas F',
    'fullname': 'Charlie White',
    'email': 'Charlie@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '7',
    'delegation': 'Universitas G',
    'fullname': 'David Black',
    'email': 'David@gmail.com',
    'payment': "approved"
  },
  {
    'id': '8',
    'delegation': 'Universitas H',
    'fullname': 'Grace Miller',
    'email': 'Grace@gmail.com',
    'payment': "not approved"
  },
  {
    'id': '9',
    'delegation': 'Universitas I',
    'fullname': 'Henry Davis',
    'email': 'Henry@gmail.com',
    'payment': "approved"
  },
  {
    'id': '10',
    'delegation': 'Universitas J',
    'fullname': 'Isabel Wilson',
    'email': 'Isabel@gmail.com',
    'payment': "not approved"
  },
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
                      '',
                    )),
                    DataColumn(label: Text('')),
                    DataColumn(label: Text('')),
                    DataColumn(label: Text('')),
                  ],
                  rows: data.map((row) {
                    return DataRow(
                      cells: [
                        DataCell(Container(
                          constraints: const BoxConstraints(minWidth: 0, maxWidth: 200),
                          child: Text(
                            row['delegation']!,
                          ),
                        )),
                        DataCell(Container(
                          constraints: const BoxConstraints(minWidth: 0, maxWidth: 200),
                          child: Text(row['fullname']!),
                        )),
                        DataCell(Container(
                          constraints: const BoxConstraints(minWidth: 0, maxWidth: 200),
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
                              ?
                              const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              )
                              :
                              const TextStyle(
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
                            builder: (context) =>  DetailPage(id: row['id']!),
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
}
