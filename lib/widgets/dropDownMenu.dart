import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';

class DropDownMenu extends StatefulWidget {
  final TextEditingController _controller = TextEditingController();
  final String name;

  DropDownMenu({@required this.name});
  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String consult_Id;
  List<String> consult = [
    'INDIA',
    'USA',
    'JAPAN',
  ];
  @override
  Widget build(BuildContext context) {
    return DropDownField(
      icon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
      controller: widget._controller,
      onValueChanged: (dynamic value) {
        consult_Id = value;
      },
      value: consult_Id,
      labelText: widget.name,
      items: consult,
      textStyle: TextStyle(color: Colors.grey),
    );
  }
}
