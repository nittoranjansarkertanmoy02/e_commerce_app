// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/images_lists.dart';
import 'package:e_commerce_app/consts/views/catgories/catagory_details.dart';
import 'package:e_commerce_app/widgets/bg_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: catagoryScreenName.text.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 12,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8.0,
            mainAxisExtent: 200,
            crossAxisSpacing: 8.0,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  catagoryImages[index],
                  fit: BoxFit.cover,
                  height: 150,
                ),
                15.heightBox,
                catagoryNames[index]
                    .text
                    .fontFamily(bold)
                    .align(TextAlign.center)
                    .make(),
              ],
            )
                .box
                .white
                .rounded
                .clip(Clip.antiAlias)
                .outerShadow
                .make()
                .onTap(() {
              Get.to(() => CatagoryDetails(
                    title: catagoryNames[index],
                  ));
            });
          },
        ),
      ),
    ));
  }
}
