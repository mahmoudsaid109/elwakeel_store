import 'package:flutter/material.dart';
import '../../features/Auth/presentation/views/login_screen.dart';
import '../../features/Auth/presentation/views/splash_screen.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/splash':
      return MaterialPageRoute(builder: (_) => SplashScreen());
    case '/login':
      return MaterialPageRoute(builder: (_) => LoginScreen());
    default:
      return MaterialPageRoute(builder: (_) => SplashScreen());
  }
}