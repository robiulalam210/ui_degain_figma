import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiappsdegain/onbording/list_carousel3.dart';
import 'package:uiappsdegain/onbording/singup/create_bank_from.dart';

class ListWelcomePage extends StatelessWidget {
  const ListWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              GestureDetector(
                 onTap: (){
                   Navigator.pop(context);
                 },
                  child: Image.asset("images/back.png")),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: Image.asset("images/coverphoto.png"),
          ),
          Spacer(),
          Text(
            "Let’s you in",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Card(
            elevation: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    "Continue with Facebook",
                    style: GoogleFonts.numans(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Card(
            elevation: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.telegram),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    "Continue with Telegram",
                    style: GoogleFonts.numans(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Card(
            elevation: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apple_outlined),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    "Continue with Apple",
                    style: GoogleFonts.numans(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Or",
                style: GoogleFonts.numans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CreateBankFrom()));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
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
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: GoogleFonts.numans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                "Sign up",
                style: GoogleFonts.numans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue),
              ),
            ],
          ),
          Spacer(),
          Spacer(),
        ],
      ),
    );
  }
}
