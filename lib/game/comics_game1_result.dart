import 'package:flutter/material.dart';
import 'package:mob_app_2/screens/appBar.dart';

import '../screens/home_screen.dart';


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
                        child: Text("about him. I didn't wanna know anything, but his voice. My life seems crashed...", style: TextStyle(fontSize: 12), ),
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