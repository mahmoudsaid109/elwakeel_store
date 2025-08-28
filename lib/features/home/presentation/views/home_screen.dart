import 'package:elwakeel_store/core/shared/home/cubit/home_cubit.dart';
import 'package:elwakeel_store/core/shared/home/widgets/custom_bottom_nav_bar.dart' show CustomBottomNavBar;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared/home/cubit/home_state.dart';
import '../../../../core/shared/home/widgets/custom_app_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            appBar: CustomAppBar(title:cubit.titles[cubit.currentIndex]),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar:const CustomBottomNavBar()
          );
        },
      ),
    );
  }
}
