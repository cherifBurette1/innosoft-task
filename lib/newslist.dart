import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Newslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        thirdcont(context),
        thirdcont(context),
        thirdcont(context),
        thirdcont(context),
        thirdcont(context),
        thirdcont(context),
        thirdcont(context),
        thirdcont(context),
      ],
    );
  }

  thirdcont(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/pics/assets/img2.png'),
          SizedBox(width: 5),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(
              translator.translate('sp'),
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(height: 2),
            Container(
              width: MediaQuery.of(context).size.width - 160,
              child: Text(
                translator.translate('bod1'),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  translator.translate('date'),
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
