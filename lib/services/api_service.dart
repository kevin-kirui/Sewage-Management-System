import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/sewage_data.dart';

class ApiService {
  Future<void> submitSewageData(SewageData data) async {
    final response = await http.post(
      Uri.parse('https://example.com/api/sewage'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data.toJson()),
    );
    if (response.statusCode == 200) {
      print('Data submitted successfully');
    } else {
      print('Failed to submit data');
    }
  }
}
