import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'file:///C:/Users/zahar/Desktop/flutter%20apps/my_luxury_newspaper/lib/widgets/first_page_reusable_card.dart';
import 'sign_in_comunity_screen.dart';
import 'podcast_screen.dart';
import 'news_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

final FirebaseMessaging _firebaseMessaging=FirebaseMessaging();



_configureFirebaseListeners(){
_firebaseMessaging.configure(
    onMessage:(Map<String,dynamic>message)async {
      print('onMessage:$message');
    },
    onLaunch:(Map<String,dynamic>message)async {
    print('onLunch:$message');
  },
   onResume:(Map<String,dynamic>message)async {
    print('onResume:$message');
  },
);
// _firebaseMessaging.getToken().then((token) {
//   print(token);
// });
 _firebaseMessaging.subscribeToTopic('all');

}


@override
  void initState() {
    super.initState();
    _configureFirebaseListeners();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(
          child: Text(
            'THE MONEY MAKER',
            style: GoogleFonts.abrilFatface(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/community.jpg'), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: FirstPageReusableCard(
                imageName: 'rolls.jpg',
                categoryText: 'Luxury news',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NewsScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: FirstPageReusableCard(
                imageName: 'audioBook.jpg',
                categoryText: 'Podcast',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PodcastScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: FirstPageReusableCard(
                imageName: 'comunity.jpg',
                categoryText: 'Enter comunity',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ComunityScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Message{
  String title;
  String body;
  String message;
  Message(title,body,message){
    this.title=title;
    this.body=body;
    this.message=message;
  }
}
