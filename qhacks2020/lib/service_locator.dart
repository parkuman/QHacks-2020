import 'package:qhacks2020/services/user_service.dart';
import 'package:qhacks2020/services/login_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerSingleton(UserService());
  locator.registerFactory<LoginService>(() => LoginService());

}