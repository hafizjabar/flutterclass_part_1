import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloWorldPage(),
    );
  }
}

class HelloWorldPage extends StatefulWidget {
  @override
  _HelloWorldPageState createState() => _HelloWorldPageState();
}

class _HelloWorldPageState extends State<HelloWorldPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        actions: <Widget>[Icon(Icons.add)],
      ),
      body: Container(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Column(children: <Widget>[
                    Text("Welcome to MyApp", style: TextStyle(fontSize: 32)),
                    SizedBox(height: 8),
                    Image.asset("assets/images/boy.png"),
                    SizedBox(height: 8.0),
                    Text("The number is $number"),
                    Text("This is my first app"),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          child: Text("Increment"),
                          color: Colors.green,
                          textColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              number++;
                            });
                          },
                        ),
                        RaisedButton(
                          child: Text("Descrement"),
                          color: Colors.blue,
                          textColor: Colors.black,
                          onPressed: () {
                            setState(() {
                              number--;
                            });
                          },
                        ),
                        OutlineButton(
                          child: Text("Reset"),
                          color: Colors.blue,
                          textColor: Colors.black,
                          onPressed: () {
                            setState(() {
                              number = 0;
                            });
                          },
                        )
                      ],
                    )
                  ])))),
    );
  }
}