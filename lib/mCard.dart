import 'package:flutter/material.dart';
import './firstRoute.dart';

class MCard extends StatefulWidget {
  String title;
  int id ;
  MCard({this.title , this.id});
  @override
  _MCardState createState() => _MCardState();
}

class _MCardState extends State<MCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          //   child:
          // Padding(
          // padding: const EdgeInsets.all(16.0),
          child: Center(
              child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.title,
                style: TextStyle( fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PostDetails( id : widget.id)),
                  ),
                  child: Container(
                    width: 280.0,
                    foregroundDecoration: new BoxDecoration(
                        color: Color.fromRGBO(155, 85, 250, 0.0)),
                    height: 240.0,
                    child: FadeInImage.assetNetwork(
                      placeholder: 'images/1.png',
                      image:
                          'https://images.unsplash.com/photo-1610890467665-f181aa420d9a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Icon(Icons.thumb_up),
                        ),
                        Text("Like")
                      ])),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Icon(Icons.message),
                        ),
                        Text("Comment")
                      ]))
                ]))
          ])),
          // )
        ));
  }
}
