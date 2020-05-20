import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0.0, num2 = 0.0, sum = 0.0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
  void doAddition() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum=0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.delete), onPressed: doClear),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output: ${sum.floor()}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(12, 80, 88, 1),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 1",
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              decoration: InputDecoration(
                hintText: "Enter Number 2",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("+"),
                  color: Theme.of(context).primaryColorDark,
                  textColor: Colors.white,
                  onPressed: doAddition,
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Theme.of(context).primaryColorDark,
                  textColor: Colors.white,
                  onPressed: doSub,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("*"),
                  color: Theme.of(context).primaryColorDark,
                  textColor: Colors.white,
                  onPressed: doMul,
                ),
                MaterialButton(
                  child: Text("/"),
                  color: Theme.of(context).primaryColorDark,
                  textColor: Colors.white,
                  onPressed: doDiv,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
