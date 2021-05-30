import 'package:get/get.dart';
import 'package:inz/screens/auth/controllers/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
