import 'package:better_page_turn/better_page_turn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_app_2/game/page_game_results.dart';
import 'package:mob_app_2/screens/game_screen.dart';
import 'package:mob_app_2/screens/home_screen.dart';
import 'package:mob_app_2/words_list.dart';

import '../game/game1_def.dart';
import '../intro_after_first_game.dart';

void main() {
  runApp(
    CupertinoApp(
      home: CupertinoPageScaffold(
        child: SafeArea(
          child: Diary(),
        ),
      ),
    ),
  );
}

class Diary extends StatefulWidget {
  @override
  _DiaryState createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  HorizontalFlipPageTurnController horizontalFlipPageTurnController = HorizontalFlipPageTurnController();
  SliderPageTurnController sliderPageTurnController = SliderPageTurnController();

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
      child: CupertinoPageScaffold(
        child: Wrap(
          children: [
            Stack(

              children: [
                Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return HorizontalFlipPageTurn(
                      children: [GameScreen(),GameScreen_2(),GameScreen_3(), GameScreen_4(), GameScreen_5()],
                      cellSize: Size(constraints.maxWidth, 450),
                      controller: horizontalFlipPageTurnController,
                    );
                  }),
                ),
              ),
                Padding(
                  padding: EdgeInsets.only(top: 300.0, left: 240),
                  child: CupertinoButton(

                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                        radius: 20,
                        child: Icon(Icons.arrow_right)),
                    onPressed: () {
                      if (text_is_over == 'Yes'){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IntroScreen_firstGame()),
                        );
                      }
                      if (game_finished == "Finally yes") {
                        horizontalFlipPageTurnController.animToRightWidget();
                        sliderPageTurnController.animToRightWidget();
                      }
                      else if(game_finished == "Not yet"){
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text(
                              'You do not have all letters to decode the page!',
                              textAlign: TextAlign.center,
                            ),
                            content: Text(
                              "Continue playing the game to find out what happened to Frank.",
                              textAlign: TextAlign.center,
                            ),
                            actions: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => HomeScreen()),
                                            );
                                          },
                                          child: Text('Main screen', style: TextStyle(fontSize: 12), textAlign: TextAlign.left,),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 35),
                                        child: TextButton(
                                          onPressed: () {

                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Game1_Ex()),
                                            );
                                          },
                                          child: Text('Play the game', style: TextStyle(fontSize: 12),textAlign: TextAlign.right,),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 300.0, left: 5),
                  child: CupertinoButton(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 20,
                        child: Icon(Icons.arrow_left)),
                    onPressed: () {
                      horizontalFlipPageTurnController.animToLeftWidget();
                      sliderPageTurnController.animToLeftWidget();
                    },
                  ),
                ),
              ]
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page_Photos()),
                );
              },
              child: Stack(
                children: [
                  Container(
                  constraints: BoxConstraints.expand(
                    height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
                  ),
                  padding: const EdgeInsets.all(8.0),

                  alignment: Alignment.center,
                  child: Image(image: AssetImage("images/p1.jpg"),),
                  transform: Matrix4.rotationZ(-0.3),
                ),
                  Visibility(
                    visible: img_visibility,
                    child: Container(
                      constraints: BoxConstraints.expand(
                        height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
                      ),
                      padding: const EdgeInsets.all(8.0),

                      alignment: Alignment.center,
                      child: Image(image: AssetImage("images/p2.jpg"),),
                      transform: Matrix4.rotationZ(0.1),
                    ),
                  ),
                  // Container(
                  //   constraints: BoxConstraints.expand(
                  //     height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
                  //   ),
                  //   padding: const EdgeInsets.all(8.0),
                  //
                  //   alignment: Alignment.center,
                  //   child: Image(image: AssetImage("images/p3.jpg"),),
                  //   transform: Matrix4.rotationZ(-0.2),
                  // ),
      ]
              ),
            )

           ]
        ),
      ),
    );
  }


}

/**import 'package:better_page_turn/better_page_turn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game_screen.dart';


class Diary extends StatefulWidget {
  @override
  _DiaryState createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  HorizontalFlipPageTurnController horizontalFlipPageTurnController = HorizontalFlipPageTurnController();
  SliderPageTurnController sliderPageTurnController = SliderPageTurnController();

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
     //navigationBar: CupertinoNavigationBar(),
      child: Wrap(
        children: [
          Stack(
            children:[
              Padding(
                padding: EdgeInsets.all(2),
                child: LayoutBuilder(builder: (context, constraints) {
                  return HorizontalFlipPageTurn(
                    children:[GameScreen(), GameScreen()],
                    cellSize: Size(constraints.maxWidth, constraints.maxHeight),
                    controller: horizontalFlipPageTurnController,
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300.0, left: 250),
                child: CupertinoButton(
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {
                    horizontalFlipPageTurnController.animToLeftWidget();
                    sliderPageTurnController.animToLeftWidget();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300.0, left: 20),
                child: CupertinoButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () {
                    horizontalFlipPageTurnController.animToRightWidget();
                    sliderPageTurnController.animToRightWidget();
                  },
                ),
              ),
            ]
          ),
          /**Container(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: LayoutBuilder(builder: (context, constraints) {
                return SliderPageTurn(
                  children: [Colors.pink.value, Colors.teal.value, Colors.orange.value, Colors.indigo.value].map((e) => _buildWidget(e, Color(e))).toList(),
                  cellSize: Size(constraints.maxWidth, 200),
                  controller: sliderPageTurnController,
                );
              }),
            ),
          ),**/




        ],
      ),
    );
  }

}**/