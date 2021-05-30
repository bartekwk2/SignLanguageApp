import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inz/screens/auth/controllers/auth_controller.dart';
import 'package:numberpicker/numberpicker.dart';

class AuthCard extends AnimatedWidget {
  final bool onBottom;
  final bool isLogin;
  final AuthController authController;
  final void Function(bool) startAnim;

  const AuthCard({
    this.onBottom,
    this.isLogin,
    this.startAnim,
    this.authController,
    Animation animation,
    Key key,
  }) : super(listenable: animation, key: key);

  Animation get _loginTransitionAnimation => listenable as Animation;

  @override
  Widget build(BuildContext context) {
    double transitionValue = _loginTransitionAnimation.value;
    return GetBuilder<AuthController>(builder: (authController) {
      double buttonSize = authController.buttonWidth;
      bool partTwoShown = authController.showPartTwo;
      return Positioned(
        bottom: onBottom ? transitionValue : 0,
        left: 0,
        right: 0,
        child: Container(
          width: double.infinity,
          height: onBottom ? Get.height / 1.8 : Get.height / 1.95,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 55,
                  decoration: BoxDecoration(
                      color: isLogin
                          ? Colors.black
                          : !partTwoShown
                              ? Colors.green
                              : Color(0xff276B76),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      isLogin ? "Logowanie" : "Rejestracja",
                      style:
                          GoogleFonts.ubuntu(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                !partTwoShown
                    ? SizedBox(
                        height: 20,
                      )
                    : SizedBox(
                      ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Stack(
                      children: [
                        partTwoShown ? registerContinued() : SizedBox(height: 1,),
                        IgnorePointer(
                          ignoring: partTwoShown ? true : false,
                          child: Opacity(
                            opacity: partTwoShown ? 0 : 1,
                            child: Column(
                              children: generateFormInput(isLogin),
                            ),
                          ),
                        ),
                      ],
                    )),

                    Column(children: [
                !authController.secondAnimEnd?SizedBox(
                  height: 60,
                ):SizedBox(),
               !authController.secondAnimEnd? GestureDetector(
                    onTap: () {
                      if (!isLogin) {
                        startAnim(false);
                      }
                    },
                    child: Transform.translate(
                      offset: Offset(0.0, authController.offsetY),
                      child: Container(
                          width: buttonSize,
                          height: authController.buttonHeight,
                          alignment: FractionalOffset.center,
                          child: !authController.beginResize
                              ? Text(
                                  !isLogin ? "Idź dalej" : "Zaloguj",
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0.3,
                                  ),
                                )
                              : SizedBox(),
                          decoration: BoxDecoration(
                            color: !isLogin
                                ? Color(0xff3A7E45)
                                : Color(0xff494949),
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                    )):SizedBox(),
                SizedBox(
                  height: 10,
                ),
                !authController.secondAnimEnd?GestureDetector(
                  onTap: () {
                    startAnim(true);
                  },
                  child: Text(
                    isLogin ? "Przejdź do rejestracji" : "Przejdź do logowania",
                    style: GoogleFonts.ubuntu(
                      color: Color(0xff207395),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ):SizedBox()
                    ],),
              ],
            ),
          ),
        ),
      );
    });
  }

  //Register pt.2
  Widget registerContinued() {
    return Column(
      children: [
        TextFormField(
          onChanged: (value) {},
          style: GoogleFonts.ubuntu(
            fontSize: 14,
          ),
          decoration: InputDecoration(
            icon: const Icon(
              Icons.person,
              size: 22,
            ),
            hintStyle: GoogleFonts.ubuntu(
                color: Colors.black45, fontWeight: FontWeight.w400),
            hintText: "Podaj swoje imie",
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Color(0xff4C8892)) ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)),
            contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Wybierz swój wiek",
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -20),
          child: NumberPicker.horizontal(
              initialValue: authController.age,
              minValue: 0,
              numberToDisplay: 7,
              maxValue: 100,
              onChanged: (number) {
                authController.ageChanged(number);
              }),
        ),
        Transform.translate(
          offset: Offset(0, -65),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Wybierz swoją płeć",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ToggleButtons(
                children: <Widget>[
                  Container(
                      width: 25,
                      height: 25,
                      child: SvgPicture.asset('assets/images/men.svg')),
                  Container(
                      width: 25,
                      height: 25,
                      child: SvgPicture.asset('assets/images/women.svg')),
                  Container(
                      width: 25,
                      height: 25,
                      child: SvgPicture.asset('assets/images/transgender.svg'))
                ],
                onPressed: (int index) {
                  authController.updateIsSelected(index);
                },
                isSelected: authController.isSelected,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 180,
                  height: 50,
                  alignment: FractionalOffset.center,
                  child: Text(
                    "Zarejestruj",
                    style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.3,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff4C8892),
                    borderRadius: BorderRadius.circular(18.0),
                  )),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  startAnim(false);
                },
                child: Text(
                  "Poprzedni krok rejestracji",
                  style: GoogleFonts.ubuntu(
                    color: Color(0xff207395),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Login / Register pt.1

  List<Widget> generateFormInput(bool isLogin) {
    if (isLogin) {
      return List.generate(2, (index) => formInput(index, isLogin));
    } else {
      return List.generate(3, (index) => formInput(index, isLogin));
    }
  }

  Widget formInput(int index, bool isLogin) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextFormField(
        onChanged: (value) {
          onTextChanged(index, value);
        },
        style: GoogleFonts.ubuntu(
          fontSize: 14,
        ),
        decoration: InputDecoration(
            icon: index == 0
                ? const Icon(
                    Icons.mail_outline,
                    size: 22,
                  )
                : const Icon(
                    Icons.vpn_key_outlined,
                    size: 22,
                  ),
            hintStyle: GoogleFonts.ubuntu(
                color: Colors.black45, fontWeight: FontWeight.w400),
            hintText: decideHintText(index),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: isLogin
                        ? Colors.black
                        : Color(
                            0xff3A7E45,
                          ))),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)),
            contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 0),
            suffixIcon: IconButton(
                icon: decideVisibilityIcon(index),
                onPressed: () {
                  decideOnPress(index);
                })),
        obscureText: decideObscureText(index),
      ),
    );
  }

  void onTextChanged(int index, String text) {
    switch (index) {
      case 0:
        authController.emailChanged(text);
        return;
      case 1:
        authController.passwordChanged(text);
        return;
      case 2:
        authController.passwordREChanged(text);
        return;
      default:
        return;
    }
  }

  bool decideObscureText(int index) {
    switch (index) {
      case 0:
        return false;
      case 1:
        if (authController.passwordVisible) {
          return false;
        } else {
          return true;
        }
        break;
      case 2:
        if (authController.passwordREVisible) {
          return false;
        } else {
          return true;
        }
        break;
      default:
        return false;
    }
  }

  void decideOnPress(int index) {
    if (index == 1) {
      authController.changePasswordVisibility(false);
    } else if (index == 2) {
      authController.changePasswordVisibility(true);
    }
  }

  Widget decideVisibilityIcon(int index) {
    switch (index) {
      case 0:
        return SizedBox();
      case 1:
        if (authController.passwordVisible) {
          return Icon(Icons.visibility);
        } else {
          return Icon(Icons.visibility_off);
        }
        break;
      case 2:
        if (authController.passwordREVisible) {
          return Icon(Icons.visibility);
        } else {
          return Icon(Icons.visibility_off);
        }
        break;
      default:
        return SizedBox();
    }
  }

  String decideHintText(int index) {
    switch (index) {
      case 0:
        return "Wprowadź mail";
      case 1:
        return "Wprowadź hasło";
      case 2:
        return "Powtórz hasło";
      default:
        return "";
    }
  }
}
