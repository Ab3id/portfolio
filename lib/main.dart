import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(HomeScreen());
}
const String ig_link = "https://instagram.com/ab3id_dev";
const String git_link = "https://github.com/Ab3id";
const String tweet_ling = "https://twitter.com/Ab3id_dev";
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ab3id Dev",
      home: Scaffold(
        body: Center(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("Hi, \nI am Ab3id, \nAndroid Developer",
               style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.w900,
                   fontStyle: FontStyle.normal,
                   fontFamily: 'IBM Plex',
                   letterSpacing: 1.2,
                   fontSize: 50
               ),
             ),
             Padding(padding: EdgeInsets.only(left: 31,right: 31),
               child: Text(
                   "I am a Software Engineer passionate automating and solving complex and simple tasks through technology.",
                   style: TextStyle(
                       color: Colors.white,
                       fontStyle: FontStyle.normal,
                       fontSize: 20
                   ),
                 softWrap: true,
             ),
             ),
             Container(
               height: 450,
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   Text("Let`s Connect ..",
                     style: TextStyle(
                         color: Colors.white,
                         fontStyle: FontStyle.italic,
                         fontSize: 20
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
        ),
        backgroundColor: Colors.blueAccent,
        floatingActionButton: Stack(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left:31),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: (){
                    _lauch_url(ig_link);
                  },
                  child: FaIcon(FontAwesomeIcons.instagram),),
              ),),
            Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                backgroundColor: Colors.black54,
                onPressed: (){
                  _lauch_url(git_link);
                },
                child: FaIcon(FontAwesomeIcons.github),),
            ),

            Padding(padding: EdgeInsets.only(right:31),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: (){
                    _lauch_url(tweet_ling);
                  },
                  child: FaIcon(FontAwesomeIcons.twitter),),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
  // This widget is the root of your application.


_lauch_url(String realURL) async{
    String url = realURL;
    if (await canLaunch(url)){
         await launch(url);
    }else{
      throw 'Could Not Launch $url';
    }
}
 
}


