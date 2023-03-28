// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/views/catgories/catagoryitem_details.dart';
import 'package:e_commerce_app/widgets/bg_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CatagoryDetails extends StatelessWidget {
  final String? title;

  const CatagoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).make(),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => catagoryNames[index]
                        .text
                        .fontFamily(semibold)
                        .size(10)
                        .center
                        .black
                        .makeCentered()
                        .box
                        .size(120, 65)
                        .rounded
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 5))
                        .make()),
              ),
            ),
            25.heightBox,
            Expanded(
                child: Container(
              child: GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8.0,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 8.0,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        imgB1,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      motorcycleDetails[index]
                          .text
                          .fontFamily(semibold)
                          .size(15)
                          .make(),
                      featureProductsDetailsPrice[index]
                          .text
                          .fontFamily(bold)
                          .color(Colors.red)
                          .size(18)
                          .make()
                    ],
                  ).box.white.rounded.make().onTap(() {
                    Get.to(() => const ItemDetails(
                          title: "Details",
                        ));
                  });
                },
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
