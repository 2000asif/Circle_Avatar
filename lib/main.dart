import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //Appbar Title
      appBar: AppBar(
        title: Text(
          'Circle Avatar',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,

          ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        //CircleAvatar
        child: Center(
          child: CircleAvatar(
            radius: 240,
            backgroundColor: Colors.lightGreenAccent,
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    // radius: 200,
                    backgroundImage: AssetImage('images/asif.jpg.png'),
                    child: Text(
                      'Md. Asif Dewan',
                      style: TextStyle(
                          fontSize:33,
                          color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    radius: 230,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


