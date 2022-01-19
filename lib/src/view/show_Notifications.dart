import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:my_ride/src/view/going_to.dart';
import 'package:my_ride/src/view/home_page.dart';
import 'package:my_ride/src/view/rider_page.dart';

class TrafalgarLow extends StatelessWidget {
  const TrafalgarLow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        //Navigator.pop(context);
        Get.to(Rider());
      },
      child: Container(
        height: size.height * .3,
        width: size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Container(),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Trafalgar Law",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  FontAwesomeIcons.solidStar,
                                  color: Color(0xfffe8550),
                                  size: 8,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  FontAwesomeIcons.solidStar,
                                  color: Color(0xfffe8550),
                                  size: 8,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  FontAwesomeIcons.solidStar,
                                  color: Color(0xfffe8550),
                                  size: 8,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  FontAwesomeIcons.solidStar,
                                  color: Color(0xfffe8550),
                                  size: 8,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  FontAwesomeIcons.star,
                                  color: Color(0xfffe8550),
                                  size: 8,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "12 Nov 2021",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "This AlertDialog makes it able to accept user input. In the following example, we are going to add "
                  "text field input in the alert dialog. "
                  "Open the main.dart file and insert the "
                  "following code.",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CancelRequest extends StatelessWidget {
  const CancelRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        Get.back(result: "ok");
      },
      child: Container(
        height: size.height * .3,
        width: size.width,
        decoration: BoxDecoration(
          color: Color(0xfffff4ef),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cancel Request!",
                style: TextStyle(
                    color: Color(0xfffe8550),
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "This AlertDialog makes it able to accept user input. In the following example, we are going to add "
                  "text field input in the alert dialog. ",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        //padding:EdgeInsets.all(20)
                      ),
                      onPressed: () {
                        //Get.to(FindingRide());
                        //Get.to(Rider());
                        Get.to(GoingTo());
                      },
                      child: Text(
                        "Go Back",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      //padding:EdgeInsets.all(20)
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Hurrah extends StatelessWidget {
  const Hurrah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .50,
      width: MediaQuery.of(context).size.width * .65,
      decoration: BoxDecoration(
        color: Color(0xfffff4ef),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.3),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Text(
              "Hurrah! We made it",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Total cost",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "US \$50",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xffffffff),
                            child: Icon(
                              Icons.fiber_manual_record_rounded,
                              size: 15,
                              color: Color(0xfffe8550),
                            ),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffffffff))),
                        ),
                        Container(
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xffffffff),
                            child: Icon(
                              Icons.fiber_manual_record_rounded,
                              size: 15,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pickup",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "12:06pm",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            // onTap: (){
                            //   Navigator.push(context,MaterialPageRoute(builder: (context) =>Trip1()));
                            // },
                            child: Text(
                              "location",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.5),
                            child: Container(
                              margin: new EdgeInsetsDirectional.only(
                                  start: 1.0, end: 1.0),
                              height: 1.0,
                              color: Color(0xffffffff),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Drop off",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "12:06pm",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "location",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "\n A dialog is a type  of modal window that \n appears in front of app content",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    height: 35,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              side: BorderSide(color: Colors.white)),
                        ),
                      ),
                      onPressed: () {
                        //Navigator.push(context,MaterialPageRoute(builder: (context) =>Location2()));
                        Get.off(MyHomePage());
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Go Home",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    height: 35,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepOrangeAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              side: BorderSide(color: Colors.deepOrangeAccent)),
                        ),
                      ),
                      onPressed: () {
                        //Navigator.push(context,MaterialPageRoute(builder: (context) =>Location2()));
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                dialogBackgroundColor: Colors.transparent,
                              ),
                              child: AlertDialog(
                                //backgroundColor: Colors.red,
                                contentPadding: EdgeInsets.zero,
                                title: Center(
                                  child: Text(""),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Review(),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Give Review",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height* .35,
      width: MediaQuery.of(context).size.width * .90,
      decoration: BoxDecoration(
        color: Color(0xfffff4ef),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        border: new Border.all(
          width: 0.2,
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Review",
              style: TextStyle(
                fontSize: 20,

                color: Color(0xfffe8550),
                // Color: Colors(0xfffe8550),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "This AlertDialog makes it able "
                  "to accept user input. In the following ",
                  style: TextStyle(
                    fontSize: 12,

                    color: Colors.black,
                    // Color: Colors(0xfffe8550),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xfffe8550),
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xfffe8550),
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xfffe8550),
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: Color(0xfffe8550),
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: Color(0xfffe8550),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Text(
                    "Briefly explain what happend. ",
                    style: TextStyle(
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey
                        // Color: Colors(0xfffe8550),
                        ),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height* .20,
      width: MediaQuery.of(context).size.width * .90,
      decoration: BoxDecoration(
        color: Color(0xfffff4ef),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        border: new Border.all(
          width: 0.2,
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Text(
            "Report a Problem",
            style: TextStyle(
              fontSize: 20,

              color: Color(0xfffe8550),
              // Color: Colors(0xfffe8550),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Text(
                  "Briefly explain what happend. ",
                  style: TextStyle(
                      fontSize: 12,
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey
                      // Color: Colors(0xfffe8550),
                      ),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.to(MyHomePage());
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.to(MyHomePage());
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
