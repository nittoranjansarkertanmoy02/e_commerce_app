import 'package:e_commerce_app/consts/colors.dart';
import 'package:e_commerce_app/consts/images_lists.dart';
import 'package:flutter/material.dart';

Widget loginImages() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
        3,
        (index) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: lightGrey,
                radius: 20,
                child: Image.asset(socialIcons[index]),
              ),
            )),
  );
}
