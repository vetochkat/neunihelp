import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc5cae9),
      appBar: AppBar(
        title: Center(child: const Text('UNIhelp', style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu'),)),
        backgroundColor: Color(0xff9fa8da),
        elevation: 4,
      ),
      body: Column(
        children: [
          Welcome(),
          Start(),
        ],
      ),
    );
  }

  Widget Welcome() {
    return Container(
      padding: EdgeInsets.only(top: 160),
      alignment: Alignment.center,
      child: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Добро пожаловать в',
            style: TextStyle(color: Colors.white, fontFamily: "Ubuntu",
                fontSize: 34),),
            Text(''),
            Text('UNIhelp',
              style: TextStyle(color: Colors.deepPurple[600], fontFamily: "Bubbles",
                  fontSize: 70),),
          ],
        ),
      ),
    );
  }
  Widget Start() {
    return Container( margin: EdgeInsets.all(40),
      decoration: BoxDecoration(color: Colors.indigo[300], borderRadius: BorderRadius.circular(20) ),
      width: 250, height: 50,
      child: Center(
        child: Text("НАЧАТЬ", style: TextStyle(
          fontFamily: "Ubuntu",fontSize: 26, color: Colors.white,
        ),),
      ),);
  }
}