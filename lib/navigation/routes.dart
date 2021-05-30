import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inz/ather/two/upload.dart';
import 'package:inz/di/di_init.dart';
import 'package:inz/bloc/classifier_bloc/classifier_bloc.dart';
import 'package:inz/screens/detection/camera_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConst.homeRoute:
        return MaterialPageRoute(builder: (_) => UploadPage());

      case RouteConst.classifierRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ClassifierBloc>()
                    ..add(ClassifierEvent.beginClassification()),
                  child: ClassifierScreen(),
                ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child:
                          Text('No route defined for ${routeSettings.name}')),
                ));
    }
  }
}

class RouteConst {
  RouteConst._();
  static const homeRoute = "/";
  static const classifierRoute = "/classifierRoute";
}

/*

class Pages {
  static List<GetPage> pages = [
    GetPage(name: PageNames.home, page: () => AuthPage(),binding: AuthBindings() )
  ];
}

class PageNames {
  static const home = "/";
}
*/
