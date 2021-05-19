import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Lang extends StatefulWidget {
  @override
  _LangState createState() => _LangState();
}

class _LangState extends State<Lang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Image(
              image: AssetImage('assets/pics/assets/Group540.png'),
              fit: BoxFit.cover)),
      body: Container(
        color: Color.fromARGB(255, 15, 23, 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                    onPressed: () {
                      translator.setNewLanguage(context,
                          newLanguage: 'en', restart: true);
                    },
                    child: Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    ))),
            Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                    onPressed: () {
                      translator.setNewLanguage(context,
                          newLanguage: 'ar', restart: true);
                    },
                    child: Text(
                      "العربيهً",
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
