import 'package:flutter/material.dart';
import 'package:flutter_temp/models/post.dart';
import './services/postsServices.dart';
import './mCard.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
///////////////////////////////////////

class _HomeState extends State<Home> {
  // definations
  List<Post> postList = new List();

  // state
  @override
  void initState() {
    super.initState();
    getPostFromsServer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // get service
  getPostFromsServer() async {
    postList = await PostService().getPosts();
    setState(() {}); // for change
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Posts",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: postList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell( // msh fahma 
                child: MCard (
                  title : postList[index].title,
                  id : postList[index].id
                ),
              );
            }));
  }
}
