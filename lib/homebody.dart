import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'artdetails.dart';

class HomeBod extends StatefulWidget {
  @override
  _HomeBodState createState() => _HomeBodState();
}

class _HomeBodState extends State<HomeBod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            flexibleSpace: Image(
                image: AssetImage('assets/pics/assets/Group540.png'),
                fit: BoxFit.cover)),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 0.1,
                      child: header1(translator.translate('news'),
                          translator.translate('more')),
                    ),
                    card1(),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              vs(),
              vs(),
              vs(),
              header1(
                  translator.translate('tweet'), translator.translate('more')),
              thirdcont(),
              thirdcont(),
              SizedBox(
                height: 10,
              ),
              header(translator.translate('predict')),
              SizedBox(
                height: 10,
              ),
              fourthcont(),
              SizedBox(
                height: 10,
              ),
              header(translator.translate('video')),
              SizedBox(
                height: 10,
              ),
              video(),
              SizedBox(
                height: 10,
              ),
              header(translator.translate('sponsors')),
              SizedBox(
                height: 10,
              ),
              fifthcont(),
            ],
          ),
        )));
  }

  header1(String text1, String text2) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text1,
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          text2,
        ),
      ),
    ]);
  }

  header(String txt) {
    return Row(children: [
      Text(txt),
    ], mainAxisAlignment: MainAxisAlignment.start);
  }

  card1() {
    return Card(
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ArticalDetails()));
            },
            child: Column(children: [
              Container(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Image.asset('assets/pics/assets/img.png')),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(translator.translate('s1'),
                      style: TextStyle(color: Colors.grey[70])),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    translator.translate('bod1'),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ])));
  }

  vs() {
    return Container(
        color: Colors.white,
        height: 50,
        width: MediaQuery.of(context).size.width - 2,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                padding: EdgeInsets.only(bottom: 7),
                child: Image.asset('assets/pics/assets/logo-club.png')),
            Text(
              translator.translate('ahly'),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('22:00'),
                Text(
                  translator.translate('date'),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              translator.translate('ahly'),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/pics/assets/logo-club.png'),
          ]),
        ]));
  }

  thirdcont() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width - 15,
      color: Colors.white,
      child: new Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(translator.translate('sp'),
                    style: TextStyle(color: Colors.black)),
                Text('@account', style: TextStyle(color: Colors.grey[70])),
              ],
            ),
            Image.asset('assets/pics/assets/5TRrpRAGc.png'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
            width: MediaQuery.of(context).size.width - 15,
            child: Text(
                "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafjerigjerigjirjgirjeijerijiejhuhuhuhuhihpuioyhoirjijeijti4jri4jti4jptejtoe4e4 4nh4iotjepitjp4t rtgke4jntgp4ejg4p;gte4pto")),
      ]),
    );
  }

  fourthcont() {
    return Container(
        height: 160,
        width: MediaQuery.of(context).size.width - 15,
        color: Colors.white,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          containers(translator.translate('nahda')),
          containers(translator.translate('helal')),
          containers(translator.translate('etihad')),
        ]));
  }

  fifthcont() {
    return Container(
        height: MediaQuery.of(context).size.height - 2,
        width: MediaQuery.of(context).size.width - 15,
        color: Colors.white,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          containers1('assets/pics/assets/Symbol2.png'),
          containers1('assets/pics/assets/Symbol2.png'),
        ]));
  }

  containers(String text1) {
    return Column(children: [
      Container(
        height: 100,
        width: 103,
        decoration: new BoxDecoration(
          border: Border.all(color: Colors.grey[500]),
        ),
        child: Image.asset('assets/pics/assets/logo-club.png'),
      ),
      Column(children: [
        Text(
          text1,
          style: TextStyle(color: Colors.grey[800], fontSize: 18),
        ),
        Text(
          '20%',
          style: TextStyle(color: Colors.grey[800], fontSize: 18),
        ),
      ])
    ]);
  }

  containers1(String url) {
    return Column(children: [
      Container(
        height: 103,
        width: 180,
        decoration: new BoxDecoration(
          border: Border.all(color: Colors.grey[500]),
        ),
        child: Image.asset(url),
      ),
    ]);
  }

  video() {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width - 15,
      color: Colors.white,
      child: Center(
        child: YoutubePlayer(
          controller: YoutubePlayerController(
              flags: YoutubePlayerFlags(
                autoPlay: false,
              ),
              initialVideoId: YoutubePlayer.convertUrlToId(
                  "https://www.youtube.com/watch?v=xSsiS304iY8")),
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
