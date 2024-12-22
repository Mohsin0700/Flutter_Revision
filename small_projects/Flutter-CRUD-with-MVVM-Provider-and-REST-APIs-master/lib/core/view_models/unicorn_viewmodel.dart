import 'package:api_crud/core/models/unicorn_model.dart';
import 'package:api_crud/core/repository/unicorn_repo.dart';
import 'package:api_crud/core/routes/routes_name.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum ViewState { Idle, Busy }

class UnicornViewModel extends ChangeNotifier {
  final unicornRepo = UnicornRepo();
  List<UnicornModel> unicorns = [];

  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
  }

  Future<List<UnicornModel>> getUnicorns() async {
    unicorns = await unicornRepo.getUnicorns();
    return unicorns;
  }

  navigateToSingleUnicornView(BuildContext ctx, int index) async {
    await Navigator.pushNamed(ctx, RoutesName.singleUnicornView, arguments: {
      'name': unicorns[index].name,
      'age': unicorns[index].age,
      'id': unicorns[index].sId,
      'color': unicorns[index].colour,
    });
  }

  deleteUnicorn({required String id, required int index}) async {
    await unicornRepo.deleteUnicorn(id: id, index: index);
    await getUnicorns();
    notifyListeners();
  }

  editUnicorn({required String id}) async {
    await unicornRepo.updateUnicor(id: id, body: {
      'name': 'Edit shuda',
      'age': 102,
      'color': 'ajeeb sa',
    });
    getUnicorns();
    notifyListeners();
  }
}
