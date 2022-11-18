import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiappsdegain/account_step/some_optional.dart';

import '../wigtes/custom_textfild.dart';
import '../wigtes/custombutton.dart';

class YourProfile_From extends StatelessWidget {
  const YourProfile_From({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("images/back.png")),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Fill Your Profile",
                    style: GoogleFonts.numans(
                        fontSize: 22, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      maxRadius: 45,
                      backgroundColor: Colors.amber,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGpkoQCTA-fV3dI-cMrsV53Mh_NcvX1ClgEx74XBVRmw&s")),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomTextField(
                hitText: "Full Name",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextField(
                hitText: "UserName",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextField(
                hitText: "Date of Birth",
                suffixIcon: Icon(Icons.date_range),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextField(
                hitText: "Email",
                prefixIcon: Icon(Icons.mail),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextField(
                hitText: "Phone Number",
                prefixIcon: Icon(Icons.phone),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextField(
                hitText: "Option",
                prefixIcon: Icon(Icons.opacity),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SomeOptional()));
                },
                child: CustomButton(
                  text: "Continue",

                )
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
