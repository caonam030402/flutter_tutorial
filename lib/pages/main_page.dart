import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentIndex = currentIndex;
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_home), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_heart), label: 'Favortite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_heart), label: 'Favortite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_message), label: 'Add post'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_user), label: 'Add post')
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.primary,
      ),
    );
  }

  final pages = <Widget>[
    HomePage(),
    Center(child: Text('Favortite')),
    Center(child: Text('Favortite1')),
    Center(child: Text('Message')),
    ProfilePage()
  ];
}
