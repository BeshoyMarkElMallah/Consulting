import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TimePickerScreen extends StatefulWidget {
  static const routename = "/TimePickerScreen";

  @override
  _TimePickerScreenState createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    var rightPadding = MediaQuery.of(context).padding;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("تطبيق الاستشارات"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/consultingPage.png",
                fit: BoxFit.cover,
              ),
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(
                  right: display.width * 0.05, top: display.height * 0.02),
              alignment: Alignment.topRight,
              child: Text(
                " المواعيد",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: display.width * 0.05,
              ),
              alignment: Alignment.topRight,
              child: Text(
                "اختر الموعد المناسب لديك ",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: display.height * 0.03,
            ),
            Container(
              child: SfDateRangePicker(
                view: DateRangePickerView.month,
                backgroundColor: Colors.white,
                initialSelectedDate: DateTime.now(),
                selectionMode: DateRangePickerSelectionMode.single,
                allowViewNavigation: true,
                showNavigationArrow: true,
                enablePastDates: false,
                headerStyle: DateRangePickerHeaderStyle(
                    textStyle:
                        TextStyle(color: Colors.deepPurple, fontSize: 20),
                    backgroundColor: Colors.black),
                    
                rangeTextStyle: TextStyle(color: Colors.deepPurple),
                selectionColor: Colors.deepPurple,
                rangeSelectionColor: Colors.grey,
                todayHighlightColor: Colors.grey,
                startRangeSelectionColor: Colors.deepPurple,
                endRangeSelectionColor: Colors.deepPurple,
              ),
            )
          ],
        ),
      ),
    );
  }
}
