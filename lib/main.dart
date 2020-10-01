import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  debugShowCheckedModeBanner: false,
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Coming Soon'),
        ),
      ),
    );
  }
}