import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiappsdegain/wigtes/custombutton.dart';

import '../wigtes/custom_textfild.dart';

class SomeOptional extends StatelessWidget {
  const SomeOptional({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            margin: EdgeInsets.all(10),

            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset("images/back.png")),                SizedBox(
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
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "What category of videos do you want to see ?",
              style:
                  GoogleFonts.numans(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            CustomTextField(
              hitText: "Search",
              prefixIcon: Icon(Icons.search_rounded),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      childAspectRatio: 200,
                      mainAxisExtent: 50,
                      maxCrossAxisExtent: 120,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.amber)),
                      child: Text("🎮 Gaming"),
                    );
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => SomeOptional()));
              },
              child: CustomButton(
                text: "Continue",

              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      )),
    );
  }
}
