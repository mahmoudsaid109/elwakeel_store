import 'package:elwakeel_store/features/settings/presentation/views/setting_main_screen.dart';
import 'package:elwakeel_store/features/suppliers/presentation/views/suppliers_main_screen.dart';
import 'package:elwakeel_store/features/wareHouses/presentation/views/ware_house_main_screen.dart';
import 'package:flutter/material.dart';
import '../../features/Auth/presentation/views/login_screen.dart';
import '../../features/Auth/presentation/views/splash_screen.dart';
import '../../features/customer/presentation/views/customer_main_screen.dart';
import '../../features/home/presentation/views/home_screen.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/splash':
      return MaterialPageRoute(builder: (_) => SplashScreen());
    case '/login':
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => HomeScreen());
    case '/setting':
      return MaterialPageRoute(builder: (_) => SettingMainScreen());
    case '/wareHouse':
      return MaterialPageRoute(builder: (_) => WareHouseMainScreen());
    case '/customers':
      return MaterialPageRoute(builder: (_) => CustomerMainScreen());
    case '/suppliers':
      return MaterialPageRoute(builder: (_) => SuppliersMainScreen());
    default:
      return MaterialPageRoute(builder: (_) => SplashScreen());
  }
}
