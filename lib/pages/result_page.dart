import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {

  static const id = '/result_page';

  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               color: Colors.green,
               width: 200,
               height: 60,
               margin: const EdgeInsets.fromLTRB(100, 20, 10, 20),
               child: Center(
                 child: Text('You are successfully booking!!!', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
               )
             )
           ],
         ),
    );
  }
}
