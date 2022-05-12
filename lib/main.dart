import 'package:flutter/material.dart';
import 'package:sttadion_booking/pages/booking_page.dart';
import 'package:sttadion_booking/pages/detail_page.dart';
import 'package:sttadion_booking/pages/home_page.dart';
import 'package:sttadion_booking/pages/result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id: (contex) => HomePage(),
        DetailPage.id: (context)=> DetailPage(),
        BookingPage.id: (context) => BookingPage(),
        ResultPage.id: (context) => ResultPage(),
      },

    );
  }
}
