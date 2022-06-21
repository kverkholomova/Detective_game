import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mob_app_2/screens/home_screen.dart';
import 'package:mob_app_2/screens/page.dart';


import '../game/game1.dart';
import 'game_screen.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
           Expanded(
             flex: 10,
             child: Container(
               width: double.infinity,
               child: Image(image: const AssetImage("images/2.jpg"),
                 fit: BoxFit.cover,
               ),
             ),
           ),
        Expanded(
          flex: 4,
          child: SizedBox(
            width: double.infinity,

            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 17.0,
                fontFamily: 'Bobbers',
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: Center(
                  child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText('It is not really difficult to be happy when you have someone to share this feeling with. '),
                        TyperAnimatedText('I was lighthearted when I knew my elder brother would always support me. '),
                        TyperAnimatedText('Frank is the one who always made me wanna live.'),
                        TyperAnimatedText('We had always been together since we were children and it seemed right when he mopped tears from my face and taught me to be strong.'),
                        TyperAnimatedText('I thought we would always be together and even die in one day.'),

                      ],
                  pause: Duration(seconds: 7),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  isRepeatingAnimation: false,

            ),
                ),
              ),
          ),
      ),
        ),
            Expanded(
              flex: 11,
              child:
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
              width: double.infinity,

                  child: Image(image: const AssetImage("images/1.jpg"),
                    fit: BoxFit.cover,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0),
                    child: FloatingActionButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const IntroScreen01()),
                        );
                      },
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ]
                ),
            ),
            ]
        ),
      ),
    );
  }

}

class IntroScreen01 extends StatefulWidget {
  const IntroScreen01({Key? key}) : super(key: key);

  @override
  State<IntroScreen01> createState() => _IntroScreen01State();
}

class _IntroScreen01State extends State<IntroScreen01> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  child: Image(image: const AssetImage("images/4.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: SizedBox(
                  width: double.infinity,

                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Bobbers',
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: Center(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('I thought we thought the same until he decided to leave. '),
                            TyperAnimatedText('It was difficult to me to get it and I was so angry with him that we stopped chatting at all. '),
                            TyperAnimatedText('I thought I would never forgive him.'),
                            TyperAnimatedText("I wasn't going to meet him after his last message, when he told that he was happy and he was hoping I would feel the same lately."),
                            TyperAnimatedText('Instead of replying him I sent him a fuck-message. I was so stupidly stubborn....'),
                            TyperAnimatedText('I made a great mistake when I let the distance to drive us apart.'),
                          ],
                          pause: Duration(seconds: 7),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          isRepeatingAnimation: false,

                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 11,
                child:
                Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                          width: double.infinity,

                          child: Image(image: const AssetImage("images/3.jpg"),
                            fit: BoxFit.cover,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 250.0),
                        child: FloatingActionButton(
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const IntroScreen02()),
                            );
                          },
                          backgroundColor: Colors.green,
                          child: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ]
                ),
              ),
            ]
        ),
      ),
    );
  }


}


class IntroScreen02 extends StatefulWidget {
  const IntroScreen02({Key? key}) : super(key: key);

  @override
  State<IntroScreen02> createState() => _IntroScreen02State();
}

class _IntroScreen02State extends State<IntroScreen02> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  child: Image(image: const AssetImage("images/5.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: SizedBox(
                  width: double.infinity,

                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Bobbers',
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: Center(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('Now I have only the message from the police, where it was told that my dear brother is wanted.  '),
                            TyperAnimatedText('He has disappeared three months ago and no one knows either he is still alive or he is not.  '),
                            TyperAnimatedText("I got to his house, where he lived for the last two years, but didn't find anything except the only note on the fridge."),
                            TyperAnimatedText('"Play with me"'),
                            TyperAnimatedText("I didn't get it at that moment, but then I found a sheet of paper under my door."),
                            TyperAnimatedText("It was a page of my brother's diary. I know that for sure, because I had the same kind of diary with magnetic papers."),
                            TyperAnimatedText("There were only one page and a little sticker on its top. "),
                            TyperAnimatedText('Play with me"'),
                            TyperAnimatedText("I didn't know who left this page and why. "),
                            TyperAnimatedText("The police doesn't believe that Frank is needed help and prefers to consider my brother as dead. "),
                            TyperAnimatedText("I don't know either they are right or wrong, but I do need to know the truth."),
                            TyperAnimatedText("Even if the only way to find out what has happened is playing, I would play this game."),
                          ],
                          pause: Duration(seconds: 7),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          isRepeatingAnimation: false,

                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 11,
                child:
                Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                          width: double.infinity,

                          child: Image(image: const AssetImage("images/6.jpg"),
                            fit: BoxFit.cover,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 250.0),
                        child: FloatingActionButton(
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            );
                          },
                          backgroundColor: Colors.green,
                          child: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ]
                ),
              ),
            ]
        ),
      ),
    );
  }


}
