import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class SectionDetailPage extends StatefulWidget {
  final String id;

  SectionDetailPage({Key? key, required this.id}) : super(key: key);

  @override
  _SectionDetailPageState createState() => _SectionDetailPageState();
}

class _SectionDetailPageState extends State<SectionDetailPage> {
  late Future<Map<String, dynamic>> _data;

  @override
  void initState() {
    super.initState();
    _data = fetchData(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _data,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // Placeholder for loading indicator
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return const Text('Data not found');
        }

        // Use the snapshot data to build your UI
        final data = snapshot.data!;

        // final textTheme = Theme.of(context).textTheme;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            color: Colors.white,
            width: 1200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: SelectionArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildInfoText("ID", widget.id),
                            buildInfoText("Fullname delegation", data['full_name_delegate']),
                            buildInfoText("Email", data['email']),
                            buildInfoText("Status", data['status']),
                            buildInfoText("Institution", data['institution']),
                            buildInfoText("Nationality", data['nationality']),
                            buildInfoText("Age", data['age'].toString()),
                            buildInfoText("Contact Number", data['contact_number']),
                            buildInfoText("Line ID", data['line_id']),
                            buildInfoText("First Council Preference",
                                "${data['first_council_preference']} - ${data['country_first_council']}"),
                            buildInfoText("Second Council Preference",
                                "${data['second_council_preference']} - ${data['country_second_council']}"),
                            buildInfoText("Third Council Preference",
                                "${data['third_council_preference']} - ${data['country_third_council']}"),
                            buildInfoText(
                                "Previous MUN Experience", data['previous_mun_experience']),
                            buildInfoText("Dietary Restriction", data['dietary_restriction']),
                            buildInfoText(
                                "Special Medical Condition", data['special_medical_condition']),
                            buildInfoText("Accommodation Status", data['accom_status']),
                            const Text(
                              "Proof of Transfer",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Image.network(
                              '${data['proof_of_transfer']}',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildInfoText(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label: ",
          style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.normal),
        ),
        const SizedBox(height: 8),
        Container(
          height: 1,
          color: Colors.grey,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Future<Map<String, dynamic>> fetchData(String id) async {
    // Replace this with your actual data fetching logic based on 'id'
    await Future.delayed(const Duration(seconds: 2)); // Simulating a network request delay
    return {
      "full_name_delegate": "Alex Smith",
      "email": "alex.smith@example.com",
      "status": "Head Delegate",
      "institution": "Global Model United Nations",
      "nationality": "Indonesian",
      "age": 25,
      "contact_number": "+628123456789",
      "line_id": "alexsmithline",
      "first_council_preference": "Security Council",
      "country_first_council": "France",
      "second_council_preference": "Human Rights Council",
      "country_second_council": "Brazil",
      "third_council_preference": "Economic and Financial Committee",
      "country_third_council": "India",
      "previous_mun_experience": "Participated in 3 MUN conferences previously.",
      "dietary_restriction": "No restrictions",
      "special_medical_condition": "None",
      "accom_status": "Non-Accommodated",
      "proof_of_transfer":
          "https://miro.medium.com/v2/resize:fit:828/format:webp/0*YvMogQLKcU-kHv6v"
    };
  }
}
