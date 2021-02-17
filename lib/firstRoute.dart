import 'package:flutter/material.dart';
import 'package:flutter_temp/models/post.dart';
import './services/postsServices.dart';

class PostDetails extends StatefulWidget {
  int id;
  PostDetails({this.id});
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  Post post;

  @override
  void initState() {
    super.initState();
    getPostByIs();
  }

  @override
  void dispose() {
    super.dispose();
  }

  getPostByIs() async {
    post = await PostService().getPostById(widget.id);
    print("hhhh");
    setState(() {}); // for change
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [

                    Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.network(
                      'https://images.unsplash.com/photo-1610890467665-f181aa420d9a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
                      // width:500.0,
                      // height: 300.0,
                    ),
                    ),
                    
                   
                    Text(
                      post.body,
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ))));
  }
}
