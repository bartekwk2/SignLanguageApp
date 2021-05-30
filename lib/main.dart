import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'di/di_init.dart';
import 'navigation/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().onGenerateRoute,
      //getPages: Pages.pages,
    );
  }
}
