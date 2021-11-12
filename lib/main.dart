import 'package:animal_info/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

///MainApp
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      title: 'Zoo App',
      
     theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(),
          splashFactory: InkRipple.splashFactory,
         
          ),
      home: const HomePage(),
    );
  }
}

///Home
class HomePage extends StatelessWidget {
  ///Constructor
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings))
        ],

        title: const Text('Zoo App',style: TextStyle(
          color: Colors.black
        ),),
      ),
      
      body: const Home(),
    );
  }
}
