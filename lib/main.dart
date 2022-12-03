import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/constants.dart';
import 'package:flutter_projects/pages/HomePage.dart';
import 'package:flutter_projects/pages/jobs/widgets/BottomNavigationBar.dart';
import 'package:flutter_projects/pages/jobs/widgets/CustomFloatingActionButton.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEFEFEF),
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomePage()),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:const CustomFloatingActionButton(),
      // floatingActionButton: FloatingActionButton(
      //
      //   onPressed: (){},
      //   child: Container(
      //     child: Row(
      //       children: [
      //         Text('Sort'),
      //         Text('Status')
      //       ],
      //     ),
      //   ),
      // ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
