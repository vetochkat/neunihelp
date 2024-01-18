import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PoiskPage(),
    );
  }
}
class PoiskPage extends StatefulWidget {
  PoiskPage({Key? key}) : super(key: key);

  @override
  State<PoiskPage> createState() => _PoiskPageState();
}

class _PoiskPageState extends State<PoiskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('UNIhelp', style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu'),)),
        backgroundColor: Color(0xff9fa8da),
      ),
      bottomNavigationBar: BottomNavigationBar( backgroundColor: Colors.grey[300],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Dialogues',
          ),
        ],
      ),
      body: Column(
        children: [
          Pusto(),
          Search(),
          Categorii(),
          Types(),

        ],
      ),
    );
  }

 Widget Pusto(){
    return Text('   ');
 }

  Widget Search() {
    return Center(
      child: SearchBar( padding: const MaterialStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 16.0, vertical: 9.0)),
        onTap: () {},
        onChanged: (_) {();},
        leading: const Icon(Icons.search),
        elevation: MaterialStateProperty.all(2.0),
        hintText: 'Поиск',
        hintStyle: MaterialStateProperty.all(const TextStyle(color: Colors.grey, fontSize: 16,)),
      ),
    );
  }
 Widget Categorii(){
    return Container( margin: EdgeInsets.only(top: 6, left: 20),
      alignment: Alignment.centerLeft,
      child: Text('Категории',
        textAlign: TextAlign.left, style: TextStyle(fontSize: 26, ),),
    );
}

  Widget Types(){
    return Center( child:
    Column(
      children: [
        Container(padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          width: 370, height: 80, margin: EdgeInsets.only(top: 14),
          decoration: BoxDecoration(color: Colors.deepPurple[100], borderRadius: BorderRadius.circular(20) ),
          child: Row(
            children: [
              Image.network('https://cdn-icons-png.flaticon.com/512/195/195496.png',
                height: 50, width: 50,),
              Text('       '),
              Text('Университеты', style: TextStyle(fontSize: 26, fontFamily: "Inter",color: Colors.black),)
            ],
          ),),

        Container(padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          width: 370, height: 80, margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(color: Colors.indigo[200], borderRadius: BorderRadius.circular(20) ),
          child: Row(
            children: [
              Image.network('https://cdn-icons-png.flaticon.com/512/5606/5606108.png',
                height: 50, width: 50,),
              Text('       '),
              Text('Предметы', style: TextStyle(fontSize: 26, fontFamily: "Inter",color: Colors.black),)
            ],
          ),),
        Container(padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          width: 370, height: 80, margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(color: Colors.indigo[300], borderRadius: BorderRadius.circular(20) ),
          child: Row(
            children: [
              Image.network('https://cdn-icons-png.flaticon.com/512/11936/11936362.png',
                height: 50, width: 50,),
              Text('       '),
              Text('Виды работ', style: TextStyle(fontSize: 26, fontFamily: "Inter",color: Colors.black),)
            ],
          ),),
      ],
    ),
      );
  }
}

