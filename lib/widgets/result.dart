import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;
    if (0 <= count && count <= 3) {
      msg = 'Sorry';
      img = Image.asset('assets/images/sad-1533965_640.jpg');
    } else if ((4 <= count && count <= 7)) {
      msg = "Nice Try";
      img = Image.asset('assets/images/nice.jpg');
    } else {
      msg = "Good";
      img = Image.asset('assets/images/blur-color-conceptual-cube-208147.jpg');
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              blurRadius: 15.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 5.0))
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF5337FF),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
              child: Text(
            msg,
            textAlign: TextAlign.center,
          )),
          FlatButton(
            onPressed: onClearState,
            child: Text("One More"),
          ),
        ],
      ),
    );
  }
}
