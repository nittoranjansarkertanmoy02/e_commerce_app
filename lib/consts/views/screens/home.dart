// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers, prefer_const_constructors

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/views/account/account_screen.dart';
import 'package:e_commerce_app/consts/views/cart/cart_screen.dart';
import 'package:e_commerce_app/consts/views/catgories/catagories_screen.dart';
import 'package:e_commerce_app/consts/views/home/home_screen.dart';
import 'package:e_commerce_app/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var _navbarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: 'Categories'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: 'Cart'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: 'Account'),
    ];

    var navBody = [
      HomeScreen(),
      CatagoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];

    //init Home Controller
    var _controller = Get.put(HomeController());
    return Scaffold(
        body: Column(
          children: [
            Obx(() => Expanded(
                child: navBody.elementAt(_controller.currentNavIndex.value)))
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: _controller.currentNavIndex.value,
            onTap: (value) {
              _controller.currentNavIndex.value = value;
            },
            items: _navbarItems,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.black,
            // ignore: prefer_const_constructors
            selectedLabelStyle: TextStyle(
              fontFamily: semibold,
            ),
            // ignore: prefer_const_constructors
          ),
        ));
  }
}
