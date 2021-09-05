import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Midterm extends StatefulWidget {
  const Midterm({Key? key}) : super(key: key);

  @override
  _MidtermState createState() => _MidtermState();
}

class _MidtermState extends State<Midterm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image(
                image: const AssetImage("assets/images/logo.png"),
                height: 90.0,
              ),
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Women's Light (57-60kg) Semi-final",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                height: 25,
                color: Colors.black),
            Row(
              children: [
                Icon(Icons.person, size: 100.0, color: Colors.blueAccent),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    ///////////////////////
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/flag_ireland.png"),
                              height: 30.0,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " IRELAND",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " HARRINGTON Kellie Anne",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      )
                    ])
              ],
            ),
            Row(
              //ชุดที่2
              children: [
                Icon(Icons.person, size: 100.0, color: Colors.redAccent),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/flag_thailand.png"),
                              height: 30.0,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " THAILAND",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " SEESONDEE Sudaporn",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      )
                    ])
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: 250.0,
                    height: 5.0,
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 250.0,
                    height: 5.0,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            Expanded(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  padding:
                      EdgeInsets.symmetric(horizontal: 90.0, vertical: 10.0),
                ),
                child: Icon(
                  Icons.person, // รูปไอคอน
                  size: 50.0, // ขนาดไอคอน
                  color: Colors.white, // สีไอคอน
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  padding:
                      EdgeInsets.symmetric(horizontal: 90.0, vertical: 10.0),
                ),
                child: Icon(
                  Icons.person, // รูปไอคอน
                  size: 50.0, // ขนาดไอคอน
                  color: Colors.white, // สีไอคอน
                ),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
