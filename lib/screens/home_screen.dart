import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mob_app_2/screens/game_screen.dart';
import 'package:mob_app_2/screens/page.dart';

import '../game/game1.dart';
import '../game/game1_def.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => exit(0)),
                );
              },
              icon: Icon(Icons.keyboard_arrow_left_rounded,size: 40,color: Colors.white,),

            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => exit(0)),
                    );
                  },
                  child: Text("Exit",style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Diary()),
                  );
                },
                icon: Icon(Icons.book,size: 40,color: Colors.white,),
                label: Text("Diary",style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            color: Colors.black87,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/1.jpg"),
                        )
                    ),
                    width: 275,
                    height: 275,
                     ),
                  ),

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child: RaisedButton.icon(

                      icon: Icon (Icons.arrow_right),
                        color: Colors.blueGrey,
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Game1_Ex()),
                          );
                    }, label: Text("Play"),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
