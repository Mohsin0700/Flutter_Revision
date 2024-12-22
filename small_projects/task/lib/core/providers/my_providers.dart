import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:task/core/animation_models/opacity_model.dart';
import 'package:task/core/repo/user_repo.dart';
import 'package:task/core/services/api_service.dart';
import 'package:task/core/view_models/allusers_viewmodel.dart';

class MyProvider {
  static List<SingleChildWidget> allProviders = [
    ChangeNotifierProvider(create: (context) => OpacityModel()),
    ChangeNotifierProvider(create: (context) => AllusersViewmodel()),
    ChangeNotifierProvider(create: (context) => UserRepo()),
    ChangeNotifierProvider(create: (context) => ApiService())
  ];
}
