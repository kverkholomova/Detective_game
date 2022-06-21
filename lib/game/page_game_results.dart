import 'package:flutter/material.dart';
import 'package:mob_app_2/intro_after_first_game.dart';

class Page_Photos extends StatefulWidget {
  const Page_Photos({Key? key}) : super(key: key);

  @override
  State<Page_Photos> createState() => _Page_PhotosState();
}

class _Page_PhotosState extends State<Page_Photos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Container(

              padding: const EdgeInsets.all(8.0),

              alignment: Alignment.center,
              child: Image(image: AssetImage("images/p1.jpg"),),

            ),
            Container(
              color: Colors.blueGrey,
              padding: const EdgeInsets.all(8.0),

              child: Text(
                "A picture of friends. Frank is in the middle of the picture, but I do not know who the others are.", style: TextStyle(color: Colors.white),
              ),
            ),
            Visibility(
              visible: img_visibility,
              child: Column(
                children: [
                  Container(


                    padding: const EdgeInsets.all(8.0),

                    alignment: Alignment.center,
                    child: Image(image: AssetImage("images/p2.jpg"),),

                  ),
                  Container(
                    width: 350,
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blueGrey,
                    child: Text(
                        "This picture I got with a diary page.",  style: TextStyle(color: Colors.white)
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blueGrey,
                    child: Text(
                        "Adam Selter is 24 years old. He was born in Paris, France, relocated to Seattle two years ago. Now he works as a waiter in 'Donkey Donuts'",  style: TextStyle(color: Colors.white)
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            //
            //   padding: const EdgeInsets.all(8.0),
            //
            //   alignment: Alignment.center,
            //   child: Image(image: AssetImage("images/p3.jpg"),),
            //
            // ),
          ],
        ),
      ),
    );
  }
}
