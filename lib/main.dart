import 'package:bottom_navigation_bar_cubit/screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bottom_navigation_bar_cubit/logic/bottom_nav_bar_cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bottom NavigationBar with Cubit',
      home: BlocProvider(
        create: (context) => BottomNavBarCubit(),
        child: BottomNavBar(),
      ),
    );
  }
}
