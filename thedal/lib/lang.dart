import 'package:flutter/material.dart';
import 'package:thedal/company.dart';
import 'package:thedal/data.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  "Select Language",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .7,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        onPressed: () {
                          setState(() {
                            lang = "tamil";
                          });
                        },
                        child: Card(
                          child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Color.fromRGBO(252, 92, 125, 1),
                                Color.fromRGBO(106, 130, 251, 1),
                              ])),
                              width: 200,
                              height: 100,
                              alignment: Alignment.center,
                              child: Image.asset("Asset/img/Tamil.png")),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        onPressed: () {
                          setState(() {
                            lang = "english";
                          });
                        },
                        child: Card(
                          elevation: 5,
                          child: Container(
                              width: 200,
                              height: 100,
                              alignment: Alignment.center,
                              child: Image.asset("Asset/img/English.png")),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Card(
                          elevation: 5,
                          child: Container(
                              width: 200,
                              height: 100,
                              alignment: Alignment.center,
                              child: Image.asset("Asset/img/japanese.png")),
                        ),
                      ),
                      GestureDetector(
                        child: Card(
                          elevation: 5,
                          child: Container(
                            width: 200,
                            height: 100,
                            alignment: Alignment.center,
                            child: Image.asset("Asset/img/chinese.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Card(
                          elevation: 5,
                          child: Container(
                              width: 200,
                              height: 100,
                              alignment: Alignment.center,
                              child: Image.asset("Asset/img/Telungu.png")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Company()));
                  },
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    elevation: 5,
                    child: Container(
                      width: 200,
                      height: 70,
                      alignment: Alignment.center,
                      child: Text("Next"),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(141, 91, 152, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
