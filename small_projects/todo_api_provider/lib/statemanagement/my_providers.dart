import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo_api_provider/view_models/home_viewmodel.dart';

class MyProviders {
  static List<SingleChildWidget> myProviders = [
    ChangeNotifierProvider<HomeViewmodel>(create: (context) => HomeViewmodel()),
  ];
}
