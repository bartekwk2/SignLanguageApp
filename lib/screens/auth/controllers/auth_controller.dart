import 'package:get/get.dart';

class AuthController extends GetxController {
  bool passwordVisible = false;
  bool passwordREVisible = false;

  String password = "";
  String email = "";
  String passwordRE = "";

  bool beginResize = false;
  bool showPartTwo = false;
  double offsetY = 0;
  double buttonHeight = 50;
  double buttonWidth = 180;

  bool secondAnimEnd = false;

  List<bool> isSelected = [false, true, false];

  int age = 5;

  void secondAnimEndChanged(bool secondAnimEnd) {
    this.secondAnimEnd = secondAnimEnd;
    update();
  }

  void ageChanged(int age) {
    this.age = age;
    update();
  }

  void changeOffsetY(double offsetY) {
    this.offsetY = offsetY;
    update();
  }

  void changePasswordVisibility(bool isPasswordRE) {
    if (isPasswordRE) {
      passwordREVisible = !passwordREVisible;
      update();
    } else {
      passwordVisible = !passwordVisible;
      update();
    }
  }

  void beginResizeChanged(bool beginResize) {
    this.beginResize = beginResize;
    update();
  }

  void partTwoShowing(bool showPartTwo) {
    this.showPartTwo = showPartTwo;
    update();
  }

  void buttonWidthChanged(double buttonWidth) {
    this.buttonWidth = buttonWidth;
    update();
  }

  void buttonHeightChanged(double buttonHeight) {
    this.buttonHeight = buttonHeight;
    update();
  }

  void passwordChanged(String password) {
    this.password = password;
    update();
  }

  void passwordREChanged(String password) {
    this.passwordRE = passwordRE;
    update();
  }

  void emailChanged(String password) {
    this.email = email;
    update();
  }

  void updateIsSelected(int index) {
    for (int i = 0; i < isSelected.length; i++) {
      if (index == i) {
        isSelected[i] = !isSelected[i];
      } else {
        isSelected[i] = false;
      }
    }
    update();
  }
}
