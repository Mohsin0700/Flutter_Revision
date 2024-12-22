import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService extends ChangeNotifier {
  Future<List> getApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode >= 200 && response.statusCode <= 300) {
      return jsonDecode(response.body);
    } else {
      throw Exception('API Service error code: ${response.statusCode}');
    }
  }
}
