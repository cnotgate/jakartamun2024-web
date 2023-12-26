import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:jakartamun_web/adminpage/models/example_model.dart';

Future<List<Book>> loadMockBooksData() async {
  final jsonString = await rootBundle.loadString('assets/mock/examples.json');
  final jsonResponse = json.decode(jsonString) as List;
  return jsonResponse.map((book) => Book.fromJson(book)).toList();
}
