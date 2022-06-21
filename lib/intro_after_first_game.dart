import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mob_app_2/screens/game_screen.dart';
import 'package:mob_app_2/screens/page.dart';

bool img_visibility = false;
class IntroScreen_firstGame extends StatefulWidget {
  const IntroScreen_firstGame({Key? key}) : super(key: key);

  @override
  State<IntroScreen_firstGame> createState() => _IntroScreen_firstGameState();
}

class _IntroScreen_firstGameState extends State<IntroScreen_firstGame> {

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
                  child: Image(image: const AssetImage("images/p3.jpg"),
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
                            TyperAnimatedText('Then I get a one more letter. Anonymous said that it is not over and I have to continue playing these games'),
                            TyperAnimatedText('The next game anonymous will send me later, but now I can only imagine where can be my brother.'),
                            TyperAnimatedText("Also anonymous sent me Adam's profile, so now I know a little bit more about him."),

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

                          child: Image(image: const AssetImage("images/p4.jpg"),
                            fit: BoxFit.cover,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FloatingActionButton(
                            onPressed: () {
                              text_is_over = "No";
                              img_visibility = true;
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Diary()),
                              );
                            },
                            backgroundColor: Colors.blueGrey,
                            child: const Icon(Icons.arrow_back_outlined),
                          ),
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