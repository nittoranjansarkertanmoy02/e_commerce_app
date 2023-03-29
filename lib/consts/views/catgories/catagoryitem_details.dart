// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/images_lists.dart';
import 'package:e_commerce_app/widgets/featureButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: title!.text.color(Colors.black).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.share)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                    autoPlay: true,
                    height: 300,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        catagoryImages[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    },
                  ),
                  10.heightBox,
                  title!.text
                      .size(16.0)
                      .color(Colors.black)
                      .fontFamily(bold)
                      .make(),
                  5.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    count: 5,
                    size: 25,
                    normalColor: Colors.grey,
                    selectionColor: Color.fromARGB(255, 205, 116, 27),
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$30,000"
                      .text
                      .fontFamily(bold)
                      .color(Colors.red)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Seller".text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            "In House Brands"
                                .text
                                .fontFamily(semibold)
                                .color(Colors.black)
                                .size(16)
                                .make(),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.message_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                      .box
                      .height(70)
                      .color(Colors.grey)
                      .padding(EdgeInsets.symmetric(horizontal: 15.0))
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Color:"
                            .text
                            .color(Colors.black)
                            .size(18)
                            .fontFamily(bold)
                            .make(),
                      ),
                      Row(
                          children: List.generate(
                        3,
                        (index) => VxBox()
                            .size(40, 40)
                            .roundedFull
                            .margin(EdgeInsets.symmetric(horizontal: 5))
                            .color(Vx.randomPrimaryColor)
                            .make(),
                      ))
                    ],
                  ).box.shadowSm.padding(EdgeInsets.all(8.0)).make(),
                  Row(
                    children: [
                      "Quarency:".text.bold.size(15).make(),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.remove)),
                          "0"
                              .text
                              .size(16)
                              .color(Colors.black)
                              .fontFamily(bold)
                              .make(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                          "(0 avaibable)"
                              .text
                              .size(16)
                              .color(Colors.black)
                              .make(),
                        ],
                      )
                    ],
                  ).box.shadowSm.padding(EdgeInsets.all(10.0)).make(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      "Total Price : "
                          .text
                          .size(16)
                          .color(Colors.black)
                          .fontFamily(bold)
                          .make(),
                      "\$0.00"
                          .text
                          .size(16)
                          .color(Colors.red)
                          .fontFamily(bold)
                          .make(),
                    ],
                  ).box.shadowSm.padding(EdgeInsets.all(10.0)).make(),
                  10.heightBox,
                  "Description : "
                      .text
                      .size(18)
                      .color(Colors.black)
                      .fontFamily(bold)
                      .make(),
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. "
                      .text
                      .size(16)
                      .color(Colors.black)
                      .make(),
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        rulesDes.length,
                        (index) => ListTile(
                              title: rulesDes[index]
                                  .text
                                  .fontFamily(semibold)
                                  .color(Colors.black)
                                  .make(),
                              trailing: Icon(Icons.arrow_forward),
                            )),
                  ),
                  5.heightBox,
                  "Products you may like : "
                      .text
                      .size(18)
                      .color(Colors.black)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        6,
                        (index) => Container(
                          decoration: BoxDecoration(color: Colors.orange),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                featureProducts1[index],
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                              featureProductNames[index]
                                  .text
                                  .fontFamily(bold)
                                  .size(16)
                                  .make(),
                              featureProductsPrice[index]
                                  .text
                                  .fontFamily(semibold)
                                  .make(),
                            ],
                          )
                              .box
                              .white
                              .rounded
                              .padding(EdgeInsets.all(10.0))
                              .margin(EdgeInsets.symmetric(horizontal: 5.0))
                              .make(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
            SizedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(180, 60))),
                        onPressed: () {},
                        child: Text("Add to Cart")),
                    ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(180, 60))),
                      onPressed: () {},
                      child: Text("Buy Now"),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
