import 'package:api_crud/core/models/unicorn_model.dart';
import 'package:api_crud/core/services/api_service.dart';
import 'package:flutter/material.dart';

class UnicornRepo extends ChangeNotifier {
  final _apiClient = ApiService();

  Future<List<UnicornModel>> getUnicorns({String? endPoint}) async {
    List<UnicornModel> unicorns = [];
    List unicornResponse = await _apiClient
        .get(endPoint != null ? 'unicorns/$endPoint' : 'unicorns');
    for (var unicorn in unicornResponse) {
      unicorns.add(UnicornModel.fromJson(unicorn));
    }
    return unicorns;
  }

  Future addUnicorn({required Map<String, dynamic> body}) async {
    final unicornResponse = await _apiClient.post('unicorns', body: body);
    return unicornResponse;
  }

  deleteUnicorn({required String id, required int index}) async {
    await _apiClient.delete(endPoint: 'unicorns/$id');
    getUnicorns();
  }

  updateUnicor({required String id, required Map<String, dynamic> body}) async {
    await _apiClient.put('unicorns/$id', body);
  }
}
