import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('$counter',style: TextStyle(fontSize: 100,fontWeight: FontWeight.w100),)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    color:Colors.white,
                    onPressed: (){setState(() {
                      counter--;
                    });},
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Icon(
                      Icons.delete,
                      size: 50,
                    ),
                  ),
                  RaisedButton(
                    color:Colors.white,
                    onPressed: (){setState(() {
                      counter++;
                    });},
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Icon(
                        Icons.add,
                        size: 50,
                    ),
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
