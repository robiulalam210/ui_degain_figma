import 'package:flutter/material.dart';
import 'package:uiappsdegain/onbording/list_carousel2.dart';

class ListCarousel1 extends StatelessWidget {
  const ListCarousel1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: size.height * 0.5,
                  height: size.height * 0.5,
                  child: Image.asset("images/Frame.png"),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 22),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(26),
                          topRight: Radius.circular(26))),
                  child: Column(
                    children: [
                      Text(
                        "Discover the finest creator for your business",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ". ",
                            style: TextStyle(fontSize: 24, color: Colors.purpleAccent,fontWeight: FontWeight.bold),
                          ), Text(
                            ". ",
                            style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w700),
                          ), Text(
                            ".",
                            style:TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w700),
                          ),
                        ],),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ListCarousel2()));
                        },
                        child: Container(
                          height: size.height * 0.07,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 14),
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
                        height: size.height * 0.07,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 16),
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 16),
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
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
