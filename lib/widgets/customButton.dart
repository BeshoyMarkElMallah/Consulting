import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backcolor;
  final String text;
  final onPressed;
  final TextStyle textStyle;
  const CustomButton(
      {@required this.backcolor,
      @required this.text,
      @required this.onPressed,
      @required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
          color: backcolor,
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.07,
        ),
      ),
    );
  }
}
