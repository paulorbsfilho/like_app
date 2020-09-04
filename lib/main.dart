import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Like App :)'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: LikePage(),
      ),
    );
  }
}

class LikePage extends StatefulWidget{
  @override
  LikePageState createState() => LikePageState();
}

class LikePageState extends State<LikePage>{
  bool like = false;
  bool unlike = false;
  String likeBtn = 'likeoutline';
  String unlikeBtn = 'unlikeoutline';

  void likeImage(){
    setState(() {
      like = !like;
      if (like && !unlike){
        likeBtn = 'like';
      }else{
        likeBtn = 'likeoutline';
      }
    });
  }

  void unlikeImage(){
    setState(() {
      unlike = !unlike;
      if (unlike && !like){
        unlikeBtn = 'unlike';
      }else{
        unlikeBtn = 'unlikeoutline';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          new Image.asset(
            'assets/images/be-positive.png',
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(onPressed: likeImage, child: Image.asset(
                'assets/images/$likeBtn.png',
                height: 50,
              ),),
              FlatButton(onPressed: unlikeImage, child: Image.asset(
                'assets/images/$unlikeBtn.png',
                height: 50,
              ),)
            ],
          )
        ],
      ),
    );
  }
}