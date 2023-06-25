import 'package:get/get.dart';
import '../Model/LoginModel.dart';
import '../Repository/Repository.dart';

// ignore: camel_case_types
class loginController extends GetxController {
  final _isLoading = false.obs;
  var login = LoginModel().obs;

  void loginButtonPressed(String email, int password) async {
    // ignore: avoid_print
    var result = await Repository().loginUser(email, password);
    // ignore: unrelated_type_equality_checks
    if (result.success == 1) {
      _isLoading.value = false;
      Get.snackbar("Амжилттай", "${result.message}");
      login.value = result;
    } else {
      Get.snackbar("Амжилтгүй", "${result.err}");
    }
  }
}
