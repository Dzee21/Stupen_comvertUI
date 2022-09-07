import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset(
              'images/antena.png',
              width: 167,
              height: 167,
            ),
            Text(
              'Ooops!',
              style: TextStyle(fontSize: 25, fontFamily: 'RobotoSlabBold'),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'No Internet Connection Found\n Check your connection',
              style: TextStyle(fontSize: 18, fontFamily: 'RobotoSlabMedium'),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 34,
            ),
            RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(42, 14, 42, 14),
                child: Text(
                  'Try Again',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'RobotoSlab Medium'),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
