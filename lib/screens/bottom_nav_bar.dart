import 'package:bottom_navigation_bar_cubit/logic/bottom_nav_bar_cubit.dart';
import 'package:bottom_navigation_bar_cubit/screens/favorite_screen.dart';
import 'package:bottom_navigation_bar_cubit/screens/home_screen.dart';
import 'package:bottom_navigation_bar_cubit/screens/notifications_screen.dart';
import 'package:bottom_navigation_bar_cubit/screens/profile_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<Widget> screens = const [
    HomeScreen(),
    FavoriteScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  void onPageChanged(int page) {
    BlocProvider.of<BottomNavBarCubit>(context).changeSelectedIndex(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _bottomNavBar(context),
    );
  }

  PageView _buildBody() {
    return PageView(
      onPageChanged: (int page) => onPageChanged(page),
      controller: pageController,
      children: screens,
    );
  }

  BottomAppBar _bottomNavBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.083,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildSingleNavBarBottom(
            context,
            defaultIcon: IconlyLight.home,
            page: 0,
            label: "Home",
            filledIcon: IconlyBold.home,
          ),
          _buildSingleNavBarBottom(
            context,
            defaultIcon: IconlyLight.heart,
            page: 1,
            label: "Favorite",
            filledIcon: IconlyBold.heart,
          ),
          _buildSingleNavBarBottom(
            context,
            defaultIcon: IconlyLight.notification,
            page: 2,
            label: "Notifications",
            filledIcon: IconlyBold.notification,
          ),
          _buildSingleNavBarBottom(
            context,
            defaultIcon: IconlyLight.profile,
            page: 3,
            label: "Profile",
            filledIcon: IconlyBold.profile,
          ),
        ],
      ),
    );
  }

  Widget _buildSingleNavBarBottom(
    BuildContext context, {
    required defaultIcon,
    required page,
    required label,
    required filledIcon,
  }) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<BottomNavBarCubit>(context).changeSelectedIndex(page);
        pageController.animateToPage(page,
            duration: const Duration(milliseconds: 10),
            curve: Curves.fastLinearToSlowEaseIn);
      },
      child: Column(
        children: [
          Icon(
            context.watch<BottomNavBarCubit>().state == page
                ? filledIcon
                : defaultIcon,
            color: context.watch<BottomNavBarCubit>().state == page
                ? Colors.amber
                : Colors.grey,
            size: MediaQuery.of(context).size.width * 0.06,
          ),
          SizedBox(height: 2),
          Text(
            label,
            style: GoogleFonts.aBeeZee(
              color: context.watch<BottomNavBarCubit>().state == page
                  ? Colors.amber
                  : Colors.grey,
              fontSize: MediaQuery.of(context).size.width * 0.03,
              fontWeight: context.watch<BottomNavBarCubit>().state == page
                  ? FontWeight.w600
                  : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
