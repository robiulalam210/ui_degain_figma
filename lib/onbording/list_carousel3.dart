import 'package:flutter/material.dart';
import 'package:uiappsdegain/onbording/list_carousel3.dart';
import 'package:uiappsdegain/onbording/list_welcome_page.dart';

class ListCarousel3 extends StatelessWidget {
  const ListCarousel3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 6,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Image.asset(
                      "images/3page.png",
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 6,
              child: Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left: 12, right: 12, top: 18),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    children: [
                      Text(
                        "Create Genuine UGC Ads with genuine creators",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ". ",
                            style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w700),
                          ), Text(
                            ". ",
                            style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w700),
                          ), Text(
                            ".",
                            style:TextStyle(fontSize: 24, color: Colors.purpleAccent,fontWeight: FontWeight.bold),
                          ),
                        ],),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ListWelcomePage()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 16),
                          decoration: BoxDecoration(
                              color: Color(0xffA020F0),
                              borderRadius: BorderRadius.circular(100)),
                          child: Text(
                            "NEXT",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 12),
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 14),
                        decoration: BoxDecoration(
                            color: Color(0xffF7EAFF),
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          "SKIP",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
