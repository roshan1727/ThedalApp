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
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(4, 116, 191, 1),
        leading: Container(
          width: 330,
          height: 100,
          child: Image.asset("Asset/img/ThedalLogo.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("Asset/img/Line 1.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Guest",
              style: TextStyle(fontSize: 35),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("Asset/img/GuestLogo.png"),
          )
        ],
      ),
      backgroundColor: Color.fromRGBO(138, 208, 236, 1),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Image.asset(
                    "Asset/img/Cartoon.png",
                    height: 245,
                    fit: BoxFit.fill,
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "Asset/img/language-solid.png",
                          height: 362,
                          width: 105,
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
