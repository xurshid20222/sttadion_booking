import 'package:flutter/material.dart';
import 'package:sttadion_booking/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static const id = '/home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? result;

  void enterDetailPage1() async {
    String? value = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const DetailPage(name: 'Stadion 1')));
    setState(() {
      result = value;
    });
    print(result ?? "No Data");
  }

  void enterDetailPage2() async {
    String? value = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const DetailPage(name: 'Stadion 2')));
    setState(() {
      result = value;
    });
    print(result ?? "No Data");
  }

  void enterDetailPage3() async {
    String? value = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const DetailPage(name: 'Stadion 3')));
    setState(() {
      result = value;
    });
    print(result ?? "No Data");
  }

  void enterDetailPage4() async {
    String? value = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const DetailPage(name: 'Stadion 4')));
    setState(() {
      result = value;
    });
    print(result ?? "No Data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: enterDetailPage1,
              child:  Text('Stadion 1'),
              color: Colors.lightBlue,
              textColor: Colors.white,
            ),
            MaterialButton(
              onPressed: enterDetailPage2,
              child: Text('Stadion 2'),
              color: Colors.lightBlue,
              textColor: Colors.white,
            ),
            MaterialButton(
              onPressed: enterDetailPage3,
              child: Text('Stadion 3'),
              color: Colors.lightBlue,
              textColor: Colors.white,
            ),
            MaterialButton(
              onPressed: enterDetailPage4,
              child: Text('Stadion 4'),
              color: Colors.lightBlue,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
