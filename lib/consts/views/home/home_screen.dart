// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/images_lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: EdgeInsets.all(10.0),
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: whiteColor,
                  prefixIcon: Icon(CupertinoIcons.search),
                  hintText: searchAnything,
                  hintStyle: TextStyle(
                    color: textfieldGrey,
                    letterSpacing: 1.5,
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          //Swipeers
          VxSwiper.builder(
            aspectRatio: 16 / 9,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayCurve: Curves.linear,
            height: 180,
            itemCount: brandList.length,
            itemBuilder: (context, index) {
              return Image.asset(
                brandList[index],
                fit: BoxFit.fill,
              )
                  .box
                  .rounded
                  .clip(Clip.antiAlias)
                  .margin(EdgeInsets.symmetric(horizontal: 5.0))
                  .make();
            },
          )
        ],
      )),
    );
  }
}
