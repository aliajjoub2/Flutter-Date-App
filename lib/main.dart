import 'package:flutter/material.dart';
import "dart:async";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DateApp(),
    );
  }
}

class DateApp extends StatefulWidget {
  const DateApp({Key? key}) : super(key: key);

  @override
  State<DateApp> createState() => _DateAppState();
}

class _DateAppState extends State<DateApp> {
  // Time
  int hour = 0;
  String min = "";
  String sec = "";
  // Dates
  String year = "";
  String month = "";
  String dayNumber = "";
  String dayweek = "";
  // text Hello ewery 60 seconds
  String hello = '';
  changeEverySec() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        hour = DateTime.now().hour;
        min = DateTime.now().minute.toString();
        sec = DateTime.now().second.toString();
        year = DateTime.now().year.toString();
        month = DateTime.now().month.toString();
        dayNumber = DateTime.now().day.toString();

        dayweek = DateTime.now().weekday.toString();
             if (sec == '59') {
      hello = 'hello new Minute';
    } else {
      hello = 'i wait the neu minute';
    }
        switch (dayweek) {
          case "1":
            dayweek = "monday";
            break;

          case "2":
            dayweek = "thursday";
            break;

          case "3":
            dayweek = "wednesday";
            break;
          case "4":
            dayweek = "Thursday";
            break;

          case "5":
            dayweek = "friday";
            break;

          case "6":
            dayweek = "saturday";
            break;
          case "7":
            dayweek = "sunday";
            break;
        }
        switch (month) {
          case "1":
            month = "January";
            break;

          case "2":
            month = "February";
            break;

          case "3":
            month = "march";
            break;
          case "4":
            month = "April";
            break;

          case "5":
            month = "may";
            break;

          case "6":
            month = "june";
            break;
          case "7":
            month = "july";
            break;
          case "8":
            month = "August";
            break;
          case "9":
            month = "September";
            break;
          case "10":
            month = "October";
            break;
          case "11":
            month = "November";
            break;
          case "12":
            month = "December";
            break;
        }
      });
    });
  }

 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeEverySec();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 114, 114),
        title: const Text('Date App'),
        centerTitle: true,
        elevation: 20,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Today is $dayweek"),
            const SizedBox(height: 20),
            Text('$dayNumber: $month: $year'),
            const SizedBox(
              height: 20,
            ),
            Text('$hour: $min: $sec'),
            const SizedBox(
              height: 20,
            ),
            Text(hello),
          ],
        ),
      ),
    );
  }
}
