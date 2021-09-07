import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homework8 extends StatefulWidget {
  const Homework8({Key? key}) : super(key: key);

  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework8> {
  List<String> font = [
    "Kanit",
    "Prompt",
    "Sriracha",
    "Itim",
    "Mitr",
    "Krub",
    "Niramit",
    "Sarabun",
    "Charm",
    "Athiti"
  ];
  var fonts = 'Sarabun';

  Widget _fontbutton(String str) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => setState(() {
          fonts = str;
        }),
        style: ElevatedButton.styleFrom(
            primary: Colors.greenAccent,
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
          'Thai Font Viewer',
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
                  'ขอให้เป็นวันที่ดี',
                  style: GoogleFonts.getFont(fonts, fontSize: 85.0),
                ),
              ),
            ),
            Text(
              "font: $fonts",
              style: TextStyle(fontSize: 15.0),
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
