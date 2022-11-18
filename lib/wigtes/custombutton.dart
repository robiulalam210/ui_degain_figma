
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    this.text,
  }) : super(key: key);

  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
          color: Color(0xffA020F0), borderRadius: BorderRadius.circular(100)),
      child: Text(
        "$text",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
    );
  }
}
