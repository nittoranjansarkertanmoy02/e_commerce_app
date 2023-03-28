// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/images_lists.dart';
import 'package:e_commerce_app/consts/views/catgories/catagory_details.dart';
import 'package:e_commerce_app/widgets/featureButton.dart';
import 'package:e_commerce_app/widgets/featureProducts.dart';
import 'package:e_commerce_app/widgets/home_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
          child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(children: [
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
          Column(
            children: [
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
                      .shadowSm
                      .make();
                },
              ),
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    2,
                    (index) => homeWidgets(
                        context.screenWidth * 0.45,
                        context.screenHeight * 0.15,
                        index == 0 ? icTodaysDeal : icFlashDeal,
                        index == 0 ? todayDeal : flashSale,
                        () {})),
              ),
              15.heightBox,
              VxSwiper.builder(
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.linear,
                height: 150,
                itemCount: brandList1.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    brandList1[index],
                    fit: BoxFit.fill,
                  )
                      .box
                      .clip(Clip.antiAlias)
                      .rounded
                      .margin(EdgeInsets.symmetric(horizontal: 5.0))
                      .shadowMd
                      .make();
                },
              ),
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    3,
                    (index) => homeWidgets1(
                        context.screenHeight * 0.12,
                        context.screenWidth / 3.5,
                        index == 0
                            ? icTopCategories
                            : index == 1
                                ? icBrands
                                : icTopSeller,
                        index == 0
                            ? topCatagories
                            : index == 1
                                ? brand
                                : topSeller,
                        () {})),
              ),
              10.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: featureCatagories.text
                    .fontFamily(semibold)
                    .size(18)
                    .color(Colors.black)
                    .make(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      3,
                      (index) => Column(
                            children: [
                              featureButton(featureCatagoryList[index],
                                  featureCatagoryTitle[index]),
                              5.heightBox,
                              featureButton(featureCatagoryList1[index],
                                  featureCatagoryTitle1[index]),
                            ],
                          )),
                ),
              ),
              10.heightBox,
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featureProductsName.text
                            .fontFamily(semibold)
                            .size(18.0)
                            .white
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              6,
                              (index) => Column(
                                children: [
                                  Image.asset(
                                    featureProducts1[index],
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  featureProductNames[index]
                                      .text
                                      .fontFamily(semibold)
                                      .make(),
                                  featureProductsPrice[index]
                                      .text
                                      .fontFamily(semibold)
                                      .make(),
                                ],
                              )
                                  .box
                                  .white
                                  .roundedSM
                                  .padding(EdgeInsets.all(5.0))
                                  .margin(EdgeInsets.symmetric(horizontal: 5.0))
                                  .make(),
                            ),
                          ),
                        ),
                      ])),
              15.heightBox,
              VxSwiper.builder(
                itemCount: 4,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.linear,
                height: 150,
                itemBuilder: (context, index) {
                  return Image.asset(
                    brandList[index],
                    fit: BoxFit.fill,
                  )
                      .box
                      .rounded
                      .shadowMd
                      .clip(Clip.antiAlias)
                      .margin(EdgeInsets.symmetric(horizontal: 5.0))
                      .make();
                },
              ),
              20.heightBox,
              //All products Section
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 8,
                  mainAxisExtent: 250,
                  crossAxisSpacing: 8,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        featureProducts1[index],
                        fit: BoxFit.fill,
                      ),
                      Spacer(),
                      featureProductNames[index].text.size(15.0).make(),
                      productNames[index]
                          .text
                          .fontFamily(bold)
                          .size(14.0)
                          .make(),
                      5.heightBox,
                      featureProductsPrice[index]
                          .text
                          .color(Colors.red)
                          .fontFamily(bold)
                          .size(18.0)
                          .make()
                    ],
                  ).box.white.roundedSM.make().onTap(() {Get.to(()=>CatagoryDetails(title: "Dummy List"));});
                },
              )
            ],
          ),
        ]),
      )),
    );
  }
}
