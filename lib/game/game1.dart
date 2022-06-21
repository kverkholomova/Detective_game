import 'package:flutter/material.dart';


class Game_1 extends StatefulWidget {
  const Game_1({Key? key}) : super(key: key);

  @override
  State<Game_1> createState() => _Game_1State();
}

class _Game_1State extends State<Game_1> {
  String current_letter_1='';
  String current_letter_2='';
  String current_letter_3='';
  String current_letter_4='';
  String current_letter_5='';
  String current_letter_6='';
  String current_letter='';
  int count=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Column(
        children: [
          Expanded(
            flex: 15,
            child: Center(
              child: SizedBox(
                width: 300,
                height: 300,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3)
                          ),
                              width: 150,
                              height: 150,
                              child: const Image(image: const AssetImage("images/game1/1.1.jpg"),fit: BoxFit.fill,)),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3)
                            ),
                            width: 150,
                            height: 150,
                            child: const Image(image: const AssetImage("images/game1/1.2.jpg"),fit: BoxFit.fill,)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3)
                            ),
                            width: 150,
                            height: 150,
                            child: const Image(image: const AssetImage("images/game1/1.3.jpg"),fit: BoxFit.fill,)),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3)
                            ),
                            width: 150,
                            height: 150,
                            child: const Image(image: const AssetImage("images/game1/1.4.jpg"),fit: BoxFit.fill,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                current_letter_1="";
                              });
                            },

                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 1),
                                color: Colors.white30,
                              ),
                              width: 40,
                              height: 40,
                              child: Center(
                                  child: Text( "$current_letter_1", style: const TextStyle(color: Colors.white, fontSize: 24),)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                current_letter_2="";
                              });
                            },

                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 1),
                                color: Colors.white30,
                              ),
                              width: 40,
                              height: 40,

                              child: Center(child: Text( "$current_letter_2", style: const TextStyle(color: Colors.white, fontSize: 24),)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                current_letter_3="";
                              });
                            },

                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 1),
                                color: Colors.white30,
                              ),
                              width: 40,
                              height: 40,

                              child: Center(child: Text( "$current_letter_3", style: const TextStyle(color: Colors.white, fontSize: 24),)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                current_letter_4="";
                              });
                            },

                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 1),
                                color: Colors.white30,
                              ),
                              width: 40,
                              height: 40,

                              child: Center(child: Text( "$current_letter_4", style: const TextStyle(color: Colors.white, fontSize: 24),)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                current_letter_5="";
                              });
                            },

                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 1),
                                color: Colors.white30,
                              ),
                              width: 40,
                              height: 40,

                              child: Center(child: Text( "$current_letter_5", style: const TextStyle(color: Colors.white, fontSize: 24),)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              current_letter_6="";
                            });
                          },

                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              color: Colors.white30,
                            ),
                            width: 40,
                            height: 40,

                            child: Center(child: Text( "$current_letter_6", style: const TextStyle(color: Colors.white, fontSize: 24),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
          Expanded(
            flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="S";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 1),
                                    color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "S", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="F";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }


                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "F", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="T";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "T", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="K";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "K", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="E";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "E", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="J";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }


                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "J", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="Y";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "Y", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="L";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "L", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="U";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "U", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  current_letter="N";
                                  if(current_letter_1==""){
                                    current_letter_1=current_letter;
                                  }
                                  else if(current_letter_2==""){
                                    current_letter_2=current_letter;
                                  }
                                  else if(current_letter_3==""){
                                    current_letter_3=current_letter;
                                  }
                                  else if(current_letter_4==""){
                                    current_letter_4=current_letter;
                                  }
                                  else if(current_letter_5==""){
                                    current_letter_5=current_letter;
                                  }
                                  else if(current_letter_6==""){
                                    current_letter_6=current_letter;
                                    if(current_letter_1=="S"&&current_letter_2=="U"&&current_letter_3=="N"&&current_letter_4=="S"&&current_letter_5=="E"&&current_letter_6=="T"){
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('You have got a new word!',textAlign: TextAlign.center,),
                                          content: Text('Sunset',textAlign: TextAlign.center,),
                                          actions: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                child: Text('Stop the game'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: TextButton(
                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                child: Text('Continue'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1),
                                  color: Colors.white30,
                                ),
                                width: 45,
                                height: 45,

                                child: const Center(child: Text( "N", style: TextStyle(color: Colors.white, fontSize: 24),)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),

        ],
      ),

    );
  }
}
