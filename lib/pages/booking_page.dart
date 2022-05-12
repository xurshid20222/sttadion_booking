import 'package:flutter/material.dart';
import 'package:sttadion_booking/pages/result_page.dart';

class BookingPage extends StatefulWidget {
  static const id = 'booking_page';

  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  void openResult(){
    Navigator.pushNamed(context, ResultPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Time'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 60,
            color: Colors.amberAccent,
            margin: EdgeInsets.fromLTRB(120, 20, 10, 20),
            child: const Center(
              child: Text(
                'Choose Hour',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 60,
            color: Colors.green,
            margin: EdgeInsets.fromLTRB(120, 20, 10, 20),
            child: const Center(
              child: Text(
                'Choose Minute',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(120, 330, 10, 20),
               child: MaterialButton(
                  onPressed: openResult,
                  child: Text('Booking'),
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                ),
          ),
        ],
      ),

    );
  }
}
