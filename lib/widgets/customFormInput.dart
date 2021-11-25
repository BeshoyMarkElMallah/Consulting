import 'package:flutter/material.dart';

class CustomFormInput extends StatefulWidget {
  final TextEditingController _controller = TextEditingController();
  final String text;
  final int length;
  CustomFormInput({@required this.text, this.length});

  @override
  _CustomFormInputState createState() => _CustomFormInputState();
}

class _CustomFormInputState extends State<CustomFormInput> {
  @override
  void dispose() {
    widget._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: display.width * 0.05),
      child: TextFormField(
        maxLines: widget.length,
        textAlign: TextAlign.right,
        controller: widget._controller,
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(width: 1, color: Colors.grey),
          //   borderRadius: BorderRadius.circular(15),
          // ),
          hintText: widget.text,
          hintStyle: TextStyle(color: Colors.grey),
          
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
