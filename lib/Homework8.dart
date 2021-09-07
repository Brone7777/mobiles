import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homework8 extends StatefulWidget {
  const Homework8({Key? key}) : super(key: key);

  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework8> {
  var fonts = 'Sarabun';
  List<String> font = ["Kanit", "Prompt"];

  Widget _fontbutton(String str) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => setState(() {
          fonts = str;
        }),
        style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0)),
        child: Text(
          str.toString(),
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text(
          'หน้าหลัก',
          style: GoogleFonts.kanit(fontSize: 22.0),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        //child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  '運命の人に出会えますように\nขอให้เจอคนที่ใช่',
                  style: GoogleFonts.getFont(fonts, fontSize: 85.0),
                ),
              ),
            ),
            Card(
              child: Wrap(
                alignment: WrapAlignment.center,
                children: font.map((e) => _fontbutton(e)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
