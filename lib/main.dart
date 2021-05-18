import 'package:flutter/material.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trying",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  Widget portrait(){
  return Center (
      child: Text(
      "Hello",
  style: TextStyle(
      color: Colors.black,
  fontSize: 30.0,
      ),
      ),
      );
}
Widget landscape(){
  return Center(
    child: Text(
      "Hello. It is nice to meet you",
          style: TextStyle(
        color: Colors.red,
      fontSize: 30.0,
    ),
    ),
  );
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
          "Landscape"
      ),
    ),
    body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portrait();
          } else {
            return landscape();
          }
        }
    ),
  );
}
}
