import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class Company extends StatefulWidget {
  @override
  _CompanyState createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  GlobalKey<AutoCompleteTextFieldState<String>> key = new GlobalKey();
  List<String> company = [
    "Dell",
    "Acer",
    "Protected text",
    "Pokeman Go",
    "Alibab",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [Text("Selected language is " + lang)],
          ),
          Row(
            children: [
              Expanded(
                child: SimpleAutoCompleteTextField(
                  suggestions: company,
                  key: key,
                  submitOnSuggestionTap: true,
                  clearOnSubmit: false,
                  textSubmitted: (text) {
                    setState(() {
                      companyName = text;
                    });
                  },
                ),
              )
            ],
          ),
          Row(
            children: [OutlinedButton(onPressed: () {}, child: Text("Next"))],
          ),
        ],
      ),
    );
  }
}
