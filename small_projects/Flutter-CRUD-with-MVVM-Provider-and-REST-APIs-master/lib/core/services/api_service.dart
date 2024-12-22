import 'dart:convert';

import 'package:api_crud/ui/shared/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService extends ChangeNotifier {
  Future<List> get(String endPoint) async {
    final response =
        await http.get(Uri.parse('${AppConstants.baseUrl}$endPoint'));

    if (response.statusCode >= 200 || response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw Exception('API Error (ApiServices)');
    }
  }

  Future post(String endPoint, {required Map<String, dynamic> body}) async {
    String jsonEncoded = jsonEncode(body);
    final response = await http.post(
      Uri.parse('${AppConstants.baseUrl}$endPoint'),
      body: jsonEncoded,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode >= 200 || response.statusCode < 300) {
      return response.body;
    } else {
      throw Exception('API Error (ApiServices)');
    }
  }

  put(String endPoint, Map<String, dynamic> body) async {
    final response = await http.put(
        Uri.parse('${AppConstants.baseUrl}$endPoint'),
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'});

    if (response.statusCode >= 200 || response.statusCode < 300) {
      print('succeed');
    } else {
      throw Exception('API Error (ApiServices)');
    }
  }

  delete({required String endPoint}) async {
    final response =
        await http.delete(Uri.parse('${AppConstants.baseUrl}$endPoint'));

    if (response.statusCode >= 200 || response.statusCode < 300) {
      // ignore: avoid_print
      print('unicorn deleted successfully');
    } else {
      throw Exception('API Error (ApiServices)');
    }
  }
}
