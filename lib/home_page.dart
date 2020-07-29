import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      
        sum = num1 - num2;
      
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doClear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Calculator")),
      body: new Container(
        child: new Container(
            padding: const EdgeInsets.all(20.0),
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Output : $sum",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple)),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration:
                        new InputDecoration(hintText: "Enter number one"),
                    controller: t1,
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration:
                        new InputDecoration(hintText: "Enter number two"),
                    controller: t2,
                  ),
                  new Padding(padding: new EdgeInsets.all(40)),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new MaterialButton(
                            child: new Text("+"),
                            color: Colors.redAccent[100],
                            onPressed: doAddition),
                        new Padding(padding: EdgeInsets.all(20)),
                        new MaterialButton(
                            child: new Text("-"),
                            color: Colors.redAccent[100],
                            onPressed: doSub)
                      ]),
                  new Padding(padding: EdgeInsets.all(20)),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new MaterialButton(
                            child: new Text("/"),
                            color: Colors.redAccent[100],
                            onPressed: doDiv),
                        new Padding(padding: EdgeInsets.all(20)),
                        new MaterialButton(
                            child: new Text("*"),
                            color: Colors.redAccent[100],
                            onPressed: doMul)
                      ]),
                      new Padding(padding: EdgeInsets.all(20)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new MaterialButton(
                          child: new Text("Clear"),
                          color: Colors.purple,
                          onPressed: doClear)
                    ],
                  )
                ])),
      ),
    );
  }
}

















































