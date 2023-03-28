// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/images_lists.dart';
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
                    height: 350,
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
                      )
                    ],
                  )
                      .box
                      .height(70)
                      .color(Colors.grey)
                      .padding(EdgeInsets.symmetric(horizontal: 15.0))
                      .make()
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
