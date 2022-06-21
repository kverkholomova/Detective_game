import 'package:flutter/material.dart';
import 'package:mob_app_2/screens/appBar.dart';
import 'package:mob_app_2/words_list.dart';

import 'home_screen.dart';

String text_is_over = 'No';
int point=0;
int number=1;

int count=3;
bool isvisible1=true;
bool isvisible2=true;
bool isvisible=true;


void changeVisibility(int c){
  if(c==2){
    isvisible=false;
    isvisible1=true;
    isvisible2=true;
  }
  else if(c==1){
    isvisible1=false;
    isvisible=false;
    isvisible2=true;
  }

}

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}


class _GameScreenState extends State<GameScreen> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        return true;
      },
      child: Scaffold(
        //appBar: MyAppBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image(image: AssetImage("images/diary-1.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 65,left: 55,right: 40),
                        child: Text("I could't understand anything. My life seemed crashed...", style: TextStyle(fontSize: 12), ),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),

      ),
    );

  }}


class GameScreen_2 extends StatefulWidget {
  const GameScreen_2({Key? key}) : super(key: key);

  @override
  State<GameScreen_2> createState() => _GameScreen_2State();
}


class _GameScreen_2State extends State<GameScreen_2> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        return true;
      },
      child: Scaffold(
        //appBar: MyAppBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image(image: AssetImage("images/diary-1.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 65,left: 55,right: 40),
                        child: Text(
                          "International Day of the Fool and Birds.  Well, it was definitely my day."
                              "In my dreams I always flew and waking up in the morning it was painful for me to realize that there were no wings behind me, "
                              "that the height could no longer be as safe as before and that I could not go beyond the horizon in search of a new life.  "
                              "I felt like a bird whose wings had been broken off and made a fool of.  "
                              "And why did I think that today everything would be different?  It was so stupid that I wanted to scream."
                              "This was my first date. The first time I wasn't afraid to tell a guy how much I liked him and the first time I felt he felt the same way about me."
                        , style: TextStyle(fontSize: 12), ),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),

      ),
    );

  }}

class GameScreen_3 extends StatefulWidget {
  const GameScreen_3({Key? key}) : super(key: key);

  @override
  State<GameScreen_3> createState() => _GameScreen_3State();
}


class _GameScreen_3State extends State<GameScreen_3> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        return true;
      },
      child: Scaffold(
        //appBar: MyAppBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image(image: AssetImage("images/diary-1.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 65,left: 55,right: 40),
                        child: Text(
                          "It was unlike any date I've gone on with girls. Adam was really special.  "
                              "He was constantly joking and his laughter made me feel warmer in my soul.  "
                              "That evening, he made me forget about everything that bothered me: about my mother, with her problems and reproaches, "
                              "about my guilt towards my sister for leaving her, and about all my unsuccessful attempts at a relationship.  "
                              "We were the only ones this evening.  And so I thought we could finally kiss.  "
                              "I reached out to him, felt his hot breath scorch my neck and I softly touched the corner of his lips.  "
                          , style: TextStyle(fontSize: 12), ),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),

      ),
    );

  }}



class GameScreen_4 extends StatefulWidget {
  const GameScreen_4({Key? key}) : super(key: key);

  @override
  State<GameScreen_4> createState() => _GameScreen_4State();
}


class _GameScreen_4State extends State<GameScreen_4> {

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: ()async{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        return true;
      },
      child: Scaffold(
        //appBar: MyAppBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image(image: AssetImage("images/diary-1.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 65,left: 55,right: 40),
                        child: Text(
                          "He repeated my movement and as soon as I turned my head to finally kiss him for real - he pulled away!  "
                              "He fucking backed off!  God, I was such an idiot.  He certainly didn't want to be with me.  "
                              "Maybe he only saw me as a friend and I ruined everything.  Again..."
                              "He wrote me a text message that he was coming, but I don't want to see him."
                              "However, it seems to me that when he knocks, I will open it, and even if he says shit to my face, I will listen to him, and then just kiss him.  "
                              "Let him hit me, let him push me away, do anything to make me stop seeing him as my salvation.  "
                              "Let him become one of a million and the warmth that began to emerge so early will disappear in me."
                          , style: TextStyle(fontSize: 12), ),
                      ),
                    ]
                ),

              ],
            ),

          ),

        ),


      ),

    );

  }}

class GameScreen_5 extends StatefulWidget {
  const GameScreen_5({Key? key}) : super(key: key);

  @override
  State<GameScreen_5> createState() => _GameScreen_5State();
}


class _GameScreen_5State extends State<GameScreen_5> {

  @override

  Widget build(BuildContext context) {
    text_is_over = "Yes";
    return Container();
  }
}

