import 'package:flutter/material.dart';
import 'api.dart';

class Tor extends StatefulWidget {
  @override
  _TorState createState() => _TorState();
}

class _TorState extends State<Tor> {
  List<dynamic> details = [];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      getdata();
    });
  }

  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ...details.map<Widget>((item) {
        return detailsq(
          item,
        );
      }).toList(),
    ]);
  }

  detailsq(dynamic item) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(left: 20, right: 20, top: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  spreadRadius: 5)
            ],
            borderRadius: BorderRadius.circular(10)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.network(
            item['avatar'],
            scale: 1.5,
          ),
          Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Name: ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    item['first_name'] + item['last_name'],
                    style: TextStyle(
                      color: Color(0xFF00B6F0),
                      fontSize: 20,
                    ),
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Email: ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    item['email'],
                    style: TextStyle(
                      color: Color(0xFF00B6F0),
                      fontSize: 14,
                    ),
                  ),
                ]),
          ])),
        ]));
  }

  Future<List<dynamic>> getdata() async {
    dynamic data = await Apis.getPosts();
    this.details = data;
    print(details.toString());
    setState(() {
      details = data;
    });
    return this.details;
  }
}
