import 'package:flutter/material.dart';
import 'package:sttadion_booking/pages/booking_page.dart';
class DetailPage extends StatefulWidget {

  static const id = 'detail_page';

  final String? name;

  const DetailPage({Key? key, this.name}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  void openBooking()async{
    Navigator.pushNamed(context, BookingPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name!),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: openBooking,
          child: Text('Next'),
          textColor: Colors.white,
          color: Colors.lightBlue,
        ),
      )
    );
  }
}
