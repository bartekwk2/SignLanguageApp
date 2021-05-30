import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inz/screens/auth/controllers/auth_controller.dart';
import 'auth_card.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _loginTransitionAnimation;
  Animation<bool> _loginTransitionAnimationBool;
  bool forwardFirstAnim = true;
  bool animReturn = false;
  double endTransitionValue = Get.height / 2 + 150;

  AnimationController _controllerTwo;
  Animation<double> _buttonRegisterAnimationWidth;
  Animation<double> _buttonRegisterAnimationHeight;
  Animation<bool> _registerTransitionAnimationBool;
  Animation<bool> _registerTransitionAnimationBoolSecond;
  Animation<double> _registerOffsetAnimation;
  bool forwardSecondAnim = true;

  ValueKey loginKey = ValueKey("login");
  ValueKey registerKey = ValueKey("register");

  AuthController authController = Get.find();

  @override
  void initState() {
    // Stack card animation

    _controller =
        AnimationController(duration: Duration(milliseconds: 1000), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              forwardFirstAnim = false;
            } else if (status == AnimationStatus.dismissed) {
              forwardFirstAnim = true;
            }
          });

    _loginTransitionAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween(begin: 0.0, end: endTransitionValue), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween(begin: endTransitionValue, end: 0.0), weight: 50),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _loginTransitionAnimationBool = Tween<bool>(begin: false, end: true)
        .animate(CurvedAnimation(
            parent: _controller,
            curve: Interval(0.40, 0.40, curve: Curves.easeInOut)))
          ..addListener(() {
            animReturn = _loginTransitionAnimationBool.value;
          });

    // Register pt 2 animation

    _controllerTwo =
        AnimationController(duration: Duration(milliseconds: 800), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              forwardSecondAnim = false;
              print("elo");
              authController.secondAnimEndChanged(true);
            } else if (status == AnimationStatus.dismissed) {
              forwardSecondAnim = true;
            } else if (status == AnimationStatus.reverse) {
              print("elo2");
              authController.secondAnimEndChanged(false);
            }
          });

    _buttonRegisterAnimationWidth = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: 180,
            end: 50,
          ),
          weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: 50,
            end: Get.width,
          ),
          weight: 50),
    ]).animate(CurvedAnimation(
        parent: _controllerTwo,
        curve: Interval(0.0, 0.3, curve: Curves.easeInOut)))
      ..addListener(() {
        authController.buttonWidthChanged(_buttonRegisterAnimationWidth.value);
      });

    _registerTransitionAnimationBool = Tween<bool>(begin: false, end: true)
        .animate(CurvedAnimation(
            parent: _controllerTwo,
            curve: Interval(0.10, 0.10, curve: Curves.easeInOut)))
          ..addListener(() {
            authController
                .beginResizeChanged(_registerTransitionAnimationBool.value);
          });

    _buttonRegisterAnimationHeight =
        Tween<double>(begin: 50, end: Get.height / 2 + 50).animate(
            CurvedAnimation(
                parent: _controllerTwo,
                curve: Interval(0.15, 0.3, curve: Curves.easeInOut)))
          ..addListener(() {
            authController
                .buttonHeightChanged(_buttonRegisterAnimationHeight.value);
          });

    _registerOffsetAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: -310), weight: 15),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: -310, end: 310), weight: 70)
    ]).animate(CurvedAnimation(
        parent: _controllerTwo,
        curve: Interval(0.15, 1.00, curve: Curves.easeInOut)))
      ..addListener(() {
        authController.changeOffsetY(_registerOffsetAnimation.value);
      });

    _registerTransitionAnimationBoolSecond =
        Tween<bool>(begin: false, end: true).animate(CurvedAnimation(
            parent: _controllerTwo, curve: Interval(0.40, 0.40)))
          ..addListener(() {
            authController
                .partTwoShowing(_registerTransitionAnimationBoolSecond.value);
          });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
              children: [
                Container(),
                Container(
                    height: Get.height / 2 + 2,
                    width: double.infinity,
                    child: Image.asset(
                      !animReturn
                          ? "assets/images/main.jpg"
                          : "assets/images/main2.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 60,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Aplikacja migowa",
                            style: GoogleFonts.ubuntu(fontSize: 30),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            !animReturn ? "Zaloguj się" : "Zarejestruj się",
                            style: GoogleFonts.ubuntu(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    )),
                ...makeStackCards(animReturn),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Widget> makeStackCards(bool animReturn) {
    List<Widget> cards = [];
    if (animReturn) {
      cards.add(AuthCard(
        animation: _loginTransitionAnimation,
        isLogin: true,
        startAnim: manageAnimations,
        key: loginKey,
        authController: authController,
        onBottom: false,
      ));
      cards.add(AuthCard(
        animation: _loginTransitionAnimation,
        key: registerKey,
        startAnim: manageAnimations,
        authController: authController,
        isLogin: false,
        onBottom: true,
      ));
    } else {
      cards.add(AuthCard(
        animation: _loginTransitionAnimation,
        key: registerKey,
        startAnim: manageAnimations,
        authController: authController,
        isLogin: false,
        onBottom: true,
      ));
      cards.add(AuthCard(
        animation: _loginTransitionAnimation,
        isLogin: true,
        startAnim: manageAnimations,
        authController: authController,
        key: loginKey,
        onBottom: false,
      ));
    }
    return cards;
  }

  void manageAnimations(bool isFistAnim) {
    if (isFistAnim) {
      if (forwardFirstAnim) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    } else {
      if (forwardSecondAnim) {
        _controllerTwo.forward();
      } else {
        _controllerTwo.reverse();
      }
    }
  }

  void startRegisterAnimation() {
    _controllerTwo.forward();
  }

  void backRegisterAnimation() {
    _controllerTwo.reverse();
  }
}
