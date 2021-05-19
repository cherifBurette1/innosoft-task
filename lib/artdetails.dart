import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ArticalDetails extends StatefulWidget {
  @override
  _ArticalDetailsState createState() => _ArticalDetailsState();
}

class _ArticalDetailsState extends State<ArticalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: new AppBar(
          leading: Icon(Icons.share),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              'assets/pics/assets/img3x.png',
            ),
            SizedBox(
              height: 10,
            ),
            header(translator.translate('bod1')),
            SizedBox(
              height: 5,
            ),
            header2(translator.translate('s1'), 18),
            SizedBox(
              height: 3,
            ),
            header2(translator.translate('date'), 12),
            SizedBox(
              height: 10,
            ),
            contain(),
          ],
        )));
  }

  header(String txt) {
    return Row(children: [
      Text(txt, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19))
    ], mainAxisAlignment: MainAxisAlignment.start);
  }

  header2(String txt, double size) {
    return Row(children: [
      Text(txt, style: TextStyle(color: Colors.grey[700], fontSize: size))
    ], mainAxisAlignment: MainAxisAlignment.start);
  }

  contain() {
    return Container(
      width: MediaQuery.of(context).size.width - 6,
      child: Text(translator.translate('example')),
    );
  }
}
