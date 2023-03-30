import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/images_lists.dart';
import 'package:e_commerce_app/consts/views/account/account_widget.dart';
import 'package:e_commerce_app/consts/views/screens/login_screen.dart';
import 'package:e_commerce_app/controller/auth-controller.dart';
import 'package:e_commerce_app/widgets/bg_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //edit profile
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  )),
            ),
            Row(children: [
              Image.asset(
                'assets/images/imgProfile5.jpg',
                fit: BoxFit.cover,
                width: 80,
              ).box.roundedFull.clip(Clip.antiAlias).make(),
              10.widthBox,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "dummy account"
                        .text
                        .color(Colors.white)
                        .fontFamily(semibold)
                        .size(15)
                        .make(),
                    "dummyaccount@gmail.com".text.color(Colors.white).make()
                  ],
                ),
              ),
              OutlinedButton(
                  // ignore: prefer_const_constructors
                  style: ButtonStyle(
                      // ignore: prefer_const_constructors
                      side: MaterialStatePropertyAll(
                          // ignore: prefer_const_constructors
                          BorderSide(
                    color: Colors.white,
                  ))),
                  onPressed: () async {
                    await Get.put(AuthController().sighoutMethod(context));
                    Get.offAll(() => const LoginScreen());
                  },
                  child: logout.text
                      .fontFamily(semibold)
                      .color(Colors.white)
                      .make())
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(context.screenWidth / 3.2, '00'),
                detailsCard(context.screenWidth / 3.2, '01'),
                detailsCard(context.screenWidth / 3.2, '02'),
              ],
            ),
            ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(
                          acIcons[index],
                          width: 20,
                        ),
                        title: accList[index].text.fontFamily(semibold).make(),
                      );
                    },
                    separatorBuilder: (context, index) {
                      // ignore: prefer_const_constructors
                      return Divider(
                        color: Colors.black,
                      );
                    },
                    itemCount: accList.length)
                .box
                .white
                .rounded
                .margin(const EdgeInsets.all(12.0))
                .padding(const EdgeInsets.symmetric(horizontal: 16.0))
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
