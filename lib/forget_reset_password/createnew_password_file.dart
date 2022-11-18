import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiappsdegain/account_step/forgot_password_method.dart';

import '../wigtes/custom_textfild.dart';

class CreateNewPasswordFile extends StatefulWidget {
  const CreateNewPasswordFile({super.key});

  @override
  State<CreateNewPasswordFile> createState() => _CreateNewPasswordFileState();
}

class _CreateNewPasswordFileState extends State<CreateNewPasswordFile> {
  bool isvalue = false;
  bool _obscureText = true;
//ghkl
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 16, left: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Text(
                      "Create New Password",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Image.asset("images/createnewpage.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Your New Password",
                      style: GoogleFonts.numans(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomPasswordField(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: _obscureText == true
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = false;
                            });
                          },
                          icon: Icon(
                            Icons.remove_red_eye,
                            size: 20,
                          ))
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = true;
                            });
                          },
                          icon: Icon(
                            Icons.visibility_off,
                            size: 20,
                          )),
                  hitText: "Password....",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomPasswordField(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: _obscureText == true
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = false;
                            });
                          },
                          icon: Icon(
                            Icons.remove_red_eye,
                            size: 20,
                          ))
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = true;
                            });
                          },
                          icon: Icon(
                            Icons.visibility_off,
                            size: 20,
                          )),
                  hitText: "Password....",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: isvalue,
                        onChanged: (v) {
                          setState(() {
                            isvalue = v!;
                          });
                        }),
                    Text(
                      "Remember me",
                      style: GoogleFonts.numans(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: InkWell(
                              onTap: (() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ForgotPassWordMethod()));
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12)),
                                padding: EdgeInsets.all(16),
                                height: 350,
                                width: 200,
                                child: Column(children: [
                                  Spacer(),
                                  CircleAvatar(
                                    maxRadius: 55,
                                    backgroundColor: Color(0xffA020F0),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Congratulations !",
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xffA020F0)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Your Account is rady to use",
                                    style: TextStyle(),
                                  ),
                                  Spacer(),
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: double.infinity,
                                    //margin: EdgeInsets.only(top: 0),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Color(0xffA020F0),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Continue",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Spacer()
                                ]),
                              ),
                            ),
                          );
                        });

                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => LoginBankFrom()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: double.infinity,
                    //margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffA020F0),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
