import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var img;
  Detay({this.img});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.img), fit: BoxFit.cover)),
      ),
    );
  }
}
