import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:my_ride/src/view/mapCallPages/call_screen1.dart';
import 'package:my_ride/src/view/mapCallPages/massage_screen.dart';
import 'package:my_ride/src/view/show_Notifications.dart';

//import 'call';
class Rider extends StatelessWidget {
  const Rider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/map2.png"),
                  fit: BoxFit.fill),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                height: size.height * .1,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                //alignment: Alignment.center,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hey Zoro!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffe8550),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Rider is about to reach in ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "10 mins!",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: size.height * .3,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    "Rider Information",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: size.height * .23,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: size.height,
                                //width: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(
                                      "images/unsplash_KIPqvvTOC1s.png"),
                                  fit: BoxFit.fill,
                                )),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Vin. Sanji",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Toyota (LAA234-343)",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xfffff4ef),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.teal,
                                      size: 10,
                                    ),
                                    Text(
                                      " 4.6",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Get.to(callscreen());
                                },
                                child: CircleAvatar(
                                  backgroundColor: Color(0xfffff4ef),
                                  child: Icon(
                                    FontAwesomeIcons.phoneAlt,
                                    color: Color(0xfffe8550),
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  //Get.back(result: "ok");
                                  Get.to(MassageScreen());
                                },
                                child: CircleAvatar(
                                  backgroundColor: Color(0xfffff4ef),
                                  child: Icon(
                                    FontAwesomeIcons.solidCommentDots,
                                    color: Color(0xfffe8550),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xfffe8550),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    //padding:EdgeInsets.all(20)
                                  ),
                                  onPressed: () {
                                    //Get.to(GoingTo());
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Theme(
                                          data: Theme.of(context).copyWith(
                                            dialogBackgroundColor:
                                                Colors.transparent,
                                          ),
                                          child: AlertDialog(
                                            //backgroundColor: Colors.red,
                                            contentPadding: EdgeInsets.zero,
                                            // title: Center(
                                            //   child: Text(""),
                                            // ),
                                            content: CancelRequest(),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.times,
                                        size: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text("Cancel Request"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
