import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'lang.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 23, 55),
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(children: [
                Image.asset(
                  'assets/pics/assets/Group5453x.png',
                  scale: 2,
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              translator.currentLanguage == "ar"
                  ? choice(() {}, Colors.white, translator.translate('clubs'))
                  : choice1(() {}, Colors.white, translator.translate('clubs')),
              SizedBox(
                height: 15,
              ),
              translator.currentLanguage == "ar"
                  ? choice(() {}, Colors.white, translator.translate('fields'))
                  : choice(() {}, Colors.white, translator.translate('fields')),
              SizedBox(
                height: 15,
              ),
              choice(() {}, Colors.red, translator.translate('who')),
              SizedBox(
                height: 15,
              ),
              choice(() {}, Colors.green, translator.translate('rules')),
              SizedBox(
                height: 15,
              ),
              choice(() {}, Colors.blue, translator.translate('referee')),
              SizedBox(
                height: 15,
              ),
              choice(() {}, Colors.white, translator.translate('call')),
              SizedBox(
                height: 15,
              ),
              choice(() {}, Colors.red, translator.translate('share')),
              SizedBox(
                height: 15,
              ),
              choice(() {}, Colors.green, translator.translate('sub')),
              SizedBox(
                height: 15,
              ),
              choice(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Lang()));
              }, Colors.white, translator.translate('langs')),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          Row(children: [
            Expanded(
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
              ),
              flex: 5,
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/pics/assets/icon.png')),
                    SizedBox(
                      height: 4,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/pics/assets/icon2.png')),
                    SizedBox(
                      height: 4,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/pics/assets/icon3.png')),
                    SizedBox(
                      height: 4,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/pics/assets/icon5.png')),
                    SizedBox(
                      height: 4,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/pics/assets/icon6.png')),
                  ],
                ))
          ]),
        ]))));
  }

  choice(Function func, Color color, String txt) {
    return GestureDetector(
        onTap: func,
        child: Container(
          child: Row(
            children: [
              Container(
                height: 20.0,
                width: 2,
                color: color,
                margin: const EdgeInsets.only(left: 10.0, right: 60.0),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                txt,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
        ));
  }

  choice1(Function func, Color color, String txt) {
    return GestureDetector(
        onTap: func,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                txt,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 6,
              ),
              Container(
                height: 20.0,
                width: 2,
                color: color,
                margin: const EdgeInsets.only(left: 10.0, right: 60.0),
              ),
            ],
          ),
        ));
  }
}
