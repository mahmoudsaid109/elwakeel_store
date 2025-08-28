import 'package:elwakeel_store/core/shared/home/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/customer/presentation/views/customer_main_screen.dart';
import '../../../../features/home/presentation/views/home_content.dart';
import '../../../../features/settings/presentation/views/setting_main_screen.dart';
import '../../../../features/suppliers/presentation/views/suppliers_main_screen.dart';
import '../../../../features/wareHouses/presentation/views/ware_house_main_screen.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
    const BottomNavigationBarItem(
      icon: Icon(Icons.people_alt),
      label: 'الموردون',
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.warehouse), label: 'المخزن'),
    const BottomNavigationBarItem(icon: Icon(Icons.people), label: 'العملاء'),

    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'الاعدادات',
    ),
  ];
  List<Widget> screens = [
    const HomeContent(),
    const SuppliersMainScreen(),
    const WareHouseMainScreen(),
    const CustomerMainScreen(),
    const SettingMainScreen(),
  ];
List<String> titles = [
  'إدارة الأقساط',
  'الموردون',
  'إدارة المخازن',
  'العملاء',
  'الإعدادات',
];
  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(HomeBottomNavState());
  }
}
