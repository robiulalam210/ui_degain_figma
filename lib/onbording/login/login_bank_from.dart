import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../forget_reset_password/forgot_password_method.dart';
import '../../wigtes/custom_textfild.dart';
import '../../wigtes/custombutton.dart';

class LoginBankFrom extends StatefulWidget {
  const LoginBankFrom({Key? key}) : super(key: key);

  @override
  State<LoginBankFrom> createState() => _LoginBankFromState();
}

class _LoginBankFromState extends State<LoginBankFrom> {
  bool isvalue = false;
  bool _obscureText=true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("images/back.png")),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              // Spacer(),
              // Spacer(),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Login to your \nAccount",
                    style: GoogleFonts.numans(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  )),
              //Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CustomTextField(
                prefixIcon: Icon(Icons.mail),
                hitText: "Email....",
              ),
              // Spacer(),
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
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: isvalue,
                      onChanged: (v) {
                        setState(() {
                          print(isvalue);
                          isvalue = v!;
                          print(isvalue);
                        });
                      }),
                  Text(
                    "Remember me",
                    style: GoogleFonts.numans(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              ),
              //Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ForgotPasswordMethod()));
                },
                child:CustomButton(
                  text: "SignUp",
                ),
              ),
              //Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot the password?",
                    style: GoogleFonts.numans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.blue),
                  )
                ],
              ),
              //Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "or continue with",
                    style: GoogleFonts.numans(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              ),
              //Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.facebook,
                      size: 35,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.apple,
                      size: 35,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.facebook,
                      size: 35,
                    ),
                  ),
                ],
              ),
              // Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.numans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "Sign in",
                    style: GoogleFonts.numans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // Spacer(),
            ],
          ),
        ),
      ),
    ));
  }
}

