import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_app_2/screens/home_screen.dart';

import 'dart:math';
import 'dart:ui';

import 'package:mob_app_2/words_list.dart';

import '../screens/page.dart';

List<String> letters_list = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];
int letter_number = 0;
String letter = '';
//String word = "SCREAM";
String word = random_words();
int letters_in_word = word.length;

String choose_img({required int id}) {
  List<String> img = [];
  String img_1_1 = "";
  String img_1_2 = "";
  String img_1_3 = "";
  String img_1_4 = "";
  if (word == "DAY") {
    img_1_1 = "images/game1/1.1.jpg";
    img_1_2 = "images/game1/1.2.jpg";
    img_1_3 = "images/game1/1.3.jpg";
    img_1_4 = "images/game1/1.4.jpg";
  } else if (word == "BIRDS") {
    img_1_1 = "images/game1/2.1.jpg";
    img_1_2 = "images/game1/2.2.jpg";
    img_1_3 = "images/game1/2.3.jpg";
    img_1_4 = "images/game1/2.4.jpg";
  } else if (word == "DREAMS") {
    img_1_1 = "images/game1/3.1.jpg";
    img_1_2 = "images/game1/3.2.jpg";
    img_1_3 = "images/game1/3.3.jpg";
    img_1_4 = "images/game1/3.4.jpg";
  } else if (word == "MORNING") {
    img_1_1 = "images/game1/4.1.jpg";
    img_1_2 = "images/game1/4.2.jpg";
    img_1_3 = "images/game1/4.3.jpg";
    img_1_4 = "images/game1/4.4.jpg";
  } else if (word == "WINGS") {
    img_1_1 = "images/game1/5.1.jpg";
    img_1_2 = "images/game1/5.2.jpg";
    img_1_3 = "images/game1/5.3.jpg";
    img_1_4 = "images/game1/5.4.jpg";
  } else if (word == "SCREAM") {
    img_1_1 = "images/game1/6.1.jpg";
    img_1_2 = "images/game1/6.2.jpg";
    img_1_3 = "images/game1/6.3.jpg";
    img_1_4 = "images/game1/6.4.jpg";
  } else if (word == "SOUL") {
    img_1_1 = "images/game1/7.1.jpg";
    img_1_2 = "images/game1/7.2.jpg";
    img_1_3 = "images/game1/7.3.jpg";
    img_1_4 = "images/game1/7.4.jpg";
  } else if (word == "EVENING") {
    img_1_1 = "images/game1/8.1.jpg";
    img_1_2 = "images/game1/8.2.jpg";
    img_1_3 = "images/game1/8.3.jpg";
    img_1_4 = "images/game1/8.4.jpg";
  } else if (word == "FOOL") {
    img_1_1 = "images/game1/9.1.jpg";
    img_1_2 = "images/game1/9.2.jpg";
    img_1_3 = "images/game1/9.3.jpg";
    img_1_4 = "images/game1/9.4.jpg";
  } else if (word == "ALTITUDE") {
    img_1_1 = "images/game1/10.1.jpg";
    img_1_2 = "images/game1/10.2.jpg";
    img_1_3 = "images/game1/10.3.jpg";
    img_1_4 = "images/game1/10.4.jpg";
  } else if (word == "HORIZON") {
    img_1_1 = "images/game1/11.1.jpg";
    img_1_2 = "images/game1/11.2.jpg";
    img_1_3 = "images/game1/11.3.jpg";
    img_1_4 = "images/game1/11.4.jpg";
  } else if (word == "THINK") {
    img_1_1 = "images/game1/12.1.jpg";
    img_1_2 = "images/game1/12.2.jpg";
    img_1_3 = "images/game1/12.3.jpg";
    img_1_4 = "images/game1/12.4.jpg";
  } else if (word == "DATE") {
    img_1_1 = "images/game1/13.1.jpg";
    img_1_2 = "images/game1/13.2.jpg";
    img_1_3 = "images/game1/13.3.jpg";
    img_1_4 = "images/game1/13.4.jpg";
  } else if (word == "AFRAID") {
    img_1_1 = "images/game1/14.1.jpg";
    img_1_2 = "images/game1/14.2.jpg";
    img_1_3 = "images/game1/14.3.jpg";
    img_1_4 = "images/game1/14.4.jpg";
  } else if (word == "GIRLS") {
    img_1_1 = "images/game1/15.1.jpg";
    img_1_2 = "images/game1/15.2.jpg";
    img_1_3 = "images/game1/15.3.jpg";
    img_1_4 = "images/game1/15.4.jpg";
  } else if (word == "LAUGHTER") {
    img_1_1 = "images/game1/16.1.jpg";
    img_1_2 = "images/game1/16.2.jpg";
    img_1_3 = "images/game1/16.3.jpg";
    img_1_4 = "images/game1/16.4.jpg";
  } else if (word == "GUILT") {
    img_1_1 = "images/game1/17.1.jpg";
    img_1_2 = "images/game1/17.2.jpg";
    img_1_3 = "images/game1/17.3.jpg";
    img_1_4 = "images/game1/17.4.jpg";
  } else if (word == "KISS") {
    img_1_1 = "images/game1/18.1.jpg";
    img_1_2 = "images/game1/18.2.jpg";
    img_1_3 = "images/game1/18.3.jpg";
    img_1_4 = "images/game1/18.4.jpg";
  } else if (word == "BREATH") {
    img_1_1 = "images/game1/19.1.jpg";
    img_1_2 = "images/game1/19.2.jpg";
    img_1_3 = "images/game1/19.3.jpg";
    img_1_4 = "images/game1/19.4.jpg";
  } else if (word == "MESSAGE") {
    img_1_1 = "images/game1/20.1.jpg";
    img_1_2 = "images/game1/20.2.jpg";
    img_1_3 = "images/game1/20.3.jpg";
    img_1_4 = "images/game1/20.4.jpg";
  } else if (word == "SALVATION") {
    img_1_1 = "images/game1/21.1.jpg";
    img_1_2 = "images/game1/21.2.jpg";
    img_1_3 = "images/game1/21.3.jpg";
    img_1_4 = "images/game1/21.4.jpg";
  } else if (word == "DISAPPEAR") {
    img_1_1 = "images/game1/22.1.jpg";
    img_1_2 = "images/game1/22.2.jpg";
    img_1_3 = "images/game1/22.3.jpg";
    img_1_4 = "images/game1/22.4.jpg";
  }

  img.add(img_1_1);
  img.add(img_1_2);
  img.add(img_1_3);
  img.add(img_1_4);
  return img[id];
}

var rng = Random();

String random_letters() {
  letter_number = rng.nextInt(25);
  var let = letters_list[letter_number];
  for (var i = 0; i < letters_in_word; i++) {
    if (let == word[i]) {
      letter_number = rng.nextInt(25);
      let = letters_list[letter_number];
    }
  }
  return let;
}

bool visible_button = true;
class Game1_Ex extends StatefulWidget {
  Game1_Ex({Key? key}) : super(key: key);

  @override
  State<Game1_Ex> createState() => _Game1_ExState();
}

class _Game1_ExState extends State<Game1_Ex> {
  String current_letter_1 = '';
  String current_letter_2 = '';
  String current_letter_3 = '';
  String current_letter_4 = '';
  String current_letter_5 = '';
  String current_letter_6 = '';
  String current_letter_7 = '';
  String current_letter_8 = '';
  String current_letter_9 = '';
  String current_letter_10 = '';
  String current_letter = '';


  String l1 = random_letters();
  String l2 = random_letters();
  String l3 = random_letters();
  String l4 = random_letters();
  String l5 = random_letters();
  String l6 = random_letters();
  String l7 = random_letters();
  String l8 = random_letters();
  String l9 = random_letters();
  String l10 = random_letters();
  String l11 = random_letters();
  String l12 = random_letters();

  l1_check (){
    for (int i = 0; i< word.length; i++){
      if (l1 == word[i]){
        l1 = random_letters();
      }
    }
    return l1;
  }

  l2_check (){
    for (int i = 0; i< word.length; i++){
      if (l2 == word[i] || l2 == l1_check()){
        l2 = random_letters();
      }
    }
    return l2;
  }

  l3_check (){
    for (int i = 0; i< word.length; i++){
      if (l3 == word[i] || l3 == l2_check() ||l3 ==l1_check()){
        l3 = random_letters();
      }
    }
    return l3;
  }

  l4_check (){
    for (int i = 0; i< word.length; i++){
      if (l4 == word[i] || l4 == l3_check() || l4 == l2_check() ||l4 ==l1_check()){
        l4 = random_letters();
      }
    }
    return l4;
  }

  l5_check (){
    for (int i = 0; i< word.length; i++){
      if (l5 == word[i] || l5 == l4_check() || l5 == l3_check() || l5 == l2_check() ||l5 == l1_check()){
        l5 = random_letters();
      }
    }
    return l5;
  }

  l6_check (){
    for (int i = 0; i< word.length; i++){
      if (l6 == word[i] || l6 == l5_check() || l6 == l4_check() || l6 == l3_check() || l6 == l2_check() ||l6 == l1_check()){
        l6 = random_letters();
      }
    }
    return l6;
  }

  l7_check (){
    for (int i = 0; i< word.length; i++){
      if (l7 == word[i] || l7 == l6_check() || l7 == l5_check() || l7 == l4_check() || l7 == l3_check() || l7 == l2_check() ||l7 == l1_check()){
        l7 = random_letters();
      }
    }
    return l7;
  }

  l8_check (){
    for (int i = 0; i< word.length; i++){
      if (l8 == word[i] || l8 == l7_check() || l8 == l6_check() || l8 == l5_check() || l8 == l4_check() || l8 == l3_check() || l8 == l2_check() ||l8 == l1_check()){
        l8 = random_letters();
      }
    }
    return l8;
  }

  l9_check (){
    for (int i = 0; i< word.length; i++){
      if (l9 == word[i] || l9 == l8_check() || l9 == l7_check() || l9 == l6_check() || l9 == l5_check() || l9 == l4_check() || l9 == l3_check() || l9 == l2_check() ||l9 == l1_check()){
        l9 = random_letters();
      }
    }
    return l9;
  }

  l10_check (){
    for (int i = 0; i< word.length; i++){
      if (l10 == word[i] || l10  == l9_check() || l10 == l8_check() || l10 == l7_check() || l10 == l6_check() || l10 == l5_check() || l10 == l4_check() || l10 == l3_check() || l10 == l2_check() ||l10 == l1_check()){
        l10 = random_letters();
      }
    }
    return l10;
  }

  l11_check (){
    for (int i = 0; i< word.length; i++){
      if (l11 == word[i] || l11 == l10_check() || l11  == l9_check() || l11 == l8_check() || l11 == l7_check() || l11 == l6_check() || l11 == l5_check() || l11 == l4_check() || l11 == l3_check() || l11 == l2_check() ||l11 == l1_check()){
        l11 = random_letters();
      }
    }
    return l11;
  }

  l12_check (){
    for (int i = 0; i< word.length; i++){
      if (l12 == word[i] || l12 == l11_check() || l12 == l10_check() || l12  == l9_check() || l12 == l8_check() || l12 == l7_check() || l12 == l6_check() || l12 == l5_check() || l12 == l4_check() || l12 == l3_check() || l12 == l2_check() ||l12 == l1_check()){
        l12 = random_letters();
      }
    }
    return l12;
  }

  int count = 1;



  Row box() {
    if (letters_in_word == 3) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_1 = "";
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
                    child: Text(
                  "$current_letter_1",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_2 = "";
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
                    child: Text(
                  "$current_letter_2",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_3 = "";
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
                    child: Text(
                  "$current_letter_3",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
        ],
      );
    }
    else if (letters_in_word == 4) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_1 = "";
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
                    child: Text(
                  "$current_letter_1",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_2 = "";
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
                    child: Text(
                  "$current_letter_2",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_3 = "";
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
                    child: Text(
                  "$current_letter_3",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_4 = "";
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
                    child: Text(
                  "$current_letter_4",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
        ],
      );
    }
    else if (letters_in_word == 5) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_1 = "";
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
                    child: Text(
                  "$current_letter_1",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_2 = "";
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
                    child: Text(
                  "$current_letter_2",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_3 = "";
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
                    child: Text(
                  "$current_letter_3",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_4 = "";
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
                    child: Text(
                  "$current_letter_4",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_5 = "";
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
                    child: Text(
                  "$current_letter_5",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
        ],
      );
    }
    else if (letters_in_word == 6) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_1 = "";
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
                    child: Text(
                  "$current_letter_1",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_2 = "";
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
                    child: Text(
                  "$current_letter_2",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_3 = "";
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
                    child: Text(
                  "$current_letter_3",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_4 = "";
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
                    child: Text(
                  "$current_letter_4",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_5 = "";
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
                    child: Text(
                  "$current_letter_5",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_6 = "";
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
                    child: Text(
                  "$current_letter_6",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
        ],
      );
    }
    else if (letters_in_word == 7) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_1 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 35,
                height: 35,
                child: Center(
                    child: Text(
                  "$current_letter_1",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_2 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 35,
                height: 35,
                child: Center(
                    child: Text(
                  "$current_letter_2",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_3 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 35,
                height: 35,
                child: Center(
                    child: Text(
                  "$current_letter_3",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_4 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 35,
                height: 35,
                child: Center(
                    child: Text(
                  "$current_letter_4",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_5 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 35,
                height: 35,
                child: Center(
                    child: Text(
                  "$current_letter_5",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_6 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 35,
                height: 35,
                child: Center(
                    child: Text(
                  "$current_letter_6",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_7 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 35,
                height: 35,
                child: Center(
                    child: Text(
                  "$current_letter_7",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
        ],
      );
    }
    else if (letters_in_word == 8) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_1 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 30,
                height: 30,
                child: Center(
                    child: Text(
                  "$current_letter_1",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_2 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 30,
                height: 30,
                child: Center(
                    child: Text(
                  "$current_letter_2",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_3 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 30,
                height: 30,
                child: Center(
                    child: Text(
                  "$current_letter_3",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_4 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 30,
                height: 30,
                child: Center(
                    child: Text(
                  "$current_letter_4",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_5 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 30,
                height: 30,
                child: Center(
                    child: Text(
                  "$current_letter_5",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_6 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 30,
                height: 30,
                child: Center(
                    child: Text(
                  "$current_letter_6",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 3),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_7 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 30,
                height: 30,
                child: Center(
                    child: Text(
                  "$current_letter_7",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 0),
            child: GestureDetector(
              onTap: () {
                setState(() {

                  current_letter_8 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 30,
                height: 30,
                child: Center(
                    child: Text(
                  "$current_letter_8",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
        ],
      );
    }
    else if (letters_in_word == 9) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_1 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_1",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_2 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_2",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_3 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_3",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_4 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_4",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_5 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_5",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_6 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_6",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_7 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_7",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_8 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_8",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_9 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  "$current_letter_9",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
        ],
      );
    }
    else if (letters_in_word == 10) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_1 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_1",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_2 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_2",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_3 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_3",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_4 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_4",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_5 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_5",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_6 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_6",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_7 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_7",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_8 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_8",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_9 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                  "$current_letter_9",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  current_letter_10 = "";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.white30,
                ),
                width: 23,
                height: 23,
                child: Center(
                    child: Text(
                      "$current_letter_10",
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    )),
              ),
            ),
          ),
        ],
      );
    }
    return Row();
  }

  Padding przycisk({required String current_letter}) {

    visible_button = false;
    bool onPressedButton = false;
    return Padding(
      padding: EdgeInsets.all(0),
      child: TextButton(
          onPressed: () {
            setState(() {
              // visible_button = false;
              onPressedButton = true;

              print(word);
              print(letters_in_word.toString());
              print(word[0]);
              visible_button = false;
              if (letters_in_word == 3) {
                if (current_letter_1 == "") {
                  current_letter_1 = current_letter;
                } else if (current_letter_2 == "") {
                  current_letter_2 = current_letter;
                } else if (current_letter_3 == "") {
                  current_letter_3 = current_letter;

                  if (current_letter_1 == word[0] &&
                      current_letter_2 == word[1] &&
                      current_letter_3 == word[2]) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          'You have got a new word!',
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          word,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Stop the game'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: TextButton(
                              onPressed: () {
                                if(words_list.isEmpty){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Diary()),
                                  );
                                }
                                words_list.remove(word);
                                word = random_words();
                                letters_in_word = word.length;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1_Ex()),
                                );
                              },
                              child: Text('Continue'),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }
              }
              else if (letters_in_word == 4) {
                if (current_letter_1 == "") {
                  current_letter_1 = current_letter;
                }
                else if (current_letter_2 == "") {
                  current_letter_2 = current_letter;
                } else if (current_letter_3 == "") {
                  current_letter_3 = current_letter;
                } else if (current_letter_4 == "") {
                  current_letter_4 = current_letter;

                  if (current_letter_1 == word[0] &&
                      current_letter_2 == word[1] &&
                      current_letter_3 == word[2] &&
                      current_letter_4 == word[3]) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          'You have got a new word!',
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          word,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Stop the game'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: TextButton(
                              onPressed: () {
                                words_list.remove(word);
                                word = random_words();
                                letters_in_word = word.length;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1_Ex()),
                                );
                              },
                              child: Text('Continue'),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }
              }
              else if (letters_in_word == 5) {
                if (current_letter_1 == "") {
                  current_letter_1 = current_letter;
                } else if (current_letter_2 == "") {
                  current_letter_2 = current_letter;
                } else if (current_letter_3 == "") {
                  current_letter_3 = current_letter;
                } else if (current_letter_4 == "") {
                  current_letter_4 = current_letter;
                } else if (current_letter_5 == "") {
                  current_letter_5 = current_letter;

                  if (current_letter_1 == word[0] &&
                      current_letter_2 == word[1] &&
                      current_letter_3 == word[2] &&
                      current_letter_4 == word[3] &&
                      current_letter_5 == word[4]) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          'You have got a new word!',
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          word,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Stop the game'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: TextButton(
                              onPressed: () {
                                words_list.remove(word);
                                word = random_words();
                                letters_in_word = word.length;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1_Ex()),
                                );
                              },
                              child: Text('Continue'),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }
              }
              else if (letters_in_word == 6) {
                if (current_letter_1 == "") {
                  current_letter_1 = current_letter;
                } else if (current_letter_2 == "") {
                  current_letter_2 = current_letter;
                } else if (current_letter_3 == "") {
                  current_letter_3 = current_letter;
                } else if (current_letter_4 == "") {
                  current_letter_4 = current_letter;
                } else if (current_letter_5 == "") {
                  current_letter_5 = current_letter;
                } else if (current_letter_6 == "") {
                  current_letter_6 = current_letter;
                  if (current_letter_1 == word[0] &&
                      current_letter_2 == word[1] &&
                      current_letter_3 == word[2] &&
                      current_letter_4 == word[3] &&
                      current_letter_5 == word[4] &&
                      current_letter_6 == word[5]) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          'You have got a new word!',
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          word,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Stop the game'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: TextButton(
                              onPressed: () {
                                words_list.remove(word);
                                word = random_words();
                                letters_in_word = word.length;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1_Ex()),
                                );
                              },
                              child: Text('Continue'),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }
              }
              else if (letters_in_word == 7) {
                if (current_letter_1 == "") {
                  current_letter_1 = current_letter;
                } else if (current_letter_2 == "") {
                  current_letter_2 = current_letter;
                } else if (current_letter_3 == "") {
                  current_letter_3 = current_letter;
                } else if (current_letter_4 == "") {
                  current_letter_4 = current_letter;
                } else if (current_letter_5 == "") {
                  current_letter_5 = current_letter;
                } else if (current_letter_6 == "") {
                  current_letter_6 = current_letter;
                } else if (current_letter_7 == '') {
                  current_letter_7 = current_letter;
                  if (current_letter_1 == word[0] &&
                      current_letter_2 == word[1] &&
                      current_letter_3 == word[2] &&
                      current_letter_4 == word[3] &&
                      current_letter_5 == word[4] &&
                      current_letter_6 == word[5] &&
                      current_letter_7 == word[6]) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          'You have got a new word!',
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          word,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Stop the game'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: TextButton(
                              onPressed: () {
                                words_list.remove(word);
                                word = random_words();
                                letters_in_word = word.length;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1_Ex()),
                                );
                              },
                              child: Text('Continue'),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }
              }
              else if (letters_in_word == 8) {
                if (current_letter_1 == "") {
                  current_letter_1 = current_letter;
                } else if (current_letter_2 == "") {
                  current_letter_2 = current_letter;
                } else if (current_letter_3 == "") {
                  current_letter_3 = current_letter;
                } else if (current_letter_4 == "") {
                  current_letter_4 = current_letter;
                } else if (current_letter_5 == "") {
                  current_letter_5 = current_letter;
                } else if (current_letter_6 == "") {
                  current_letter_6 = current_letter;
                } else if (current_letter_7 == '') {
                  current_letter_7 = current_letter;
                } else if (current_letter_8 == '') {
                  current_letter_8 = current_letter;
                  if (current_letter_1 == word[0] &&
                      current_letter_2 == word[1] &&
                      current_letter_3 == word[2] &&
                      current_letter_4 == word[3] &&
                      current_letter_5 == word[4] &&
                      current_letter_6 == word[5] &&
                      current_letter_7 == word[6] &&
                      current_letter_8 == word[7]) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          'You have got a new word!',
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          word,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Stop the game'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: TextButton(
                              onPressed: () {
                                words_list.remove(word);
                                word = random_words();
                                letters_in_word = word.length;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1_Ex()),
                                );
                              },
                              child: Text('Continue'),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }
              }
              else if (letters_in_word == 9) {
                if (current_letter_1 == "") {
                  current_letter_1 = current_letter;
                } else if (current_letter_2 == "") {
                  current_letter_2 = current_letter;
                } else if (current_letter_3 == "") {
                  current_letter_3 = current_letter;
                } else if (current_letter_4 == "") {
                  current_letter_4 = current_letter;
                } else if (current_letter_5 == "") {
                  current_letter_5 = current_letter;
                } else if (current_letter_6 == "") {
                  current_letter_6 = current_letter;
                } else if (current_letter_7 == '') {
                  current_letter_7 = current_letter;
                } else if (current_letter_8 == '') {
                  current_letter_8 = current_letter;
                } else if (current_letter_9 == '') {
                  current_letter_9 = current_letter;
                  if (current_letter_1 == word[0] &&
                      current_letter_2 == word[1] &&
                      current_letter_3 == word[2] &&
                      current_letter_4 == word[3] &&
                      current_letter_5 == word[4] &&
                      current_letter_6 == word[5] &&
                      current_letter_7 == word[6] &&
                      current_letter_8 == word[7] &&
                      current_letter_9 == word[8]) {
                    if (word != "DISAPPEAR"){
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          'You have got a new word!',
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          word,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Stop the game'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: TextButton(
                              onPressed: () {
                                words_list.remove(word);
                                word = random_words();
                                letters_in_word = word.length;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1_Ex()),
                                );
                              },
                              child: Text('Continue'),
                            ),
                          ),
                        ],
                      ),
                    );


                    }
                    else if (word == "DISAPPEAR"){
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text(
                            'You have finished!',
                            textAlign: TextAlign.center,
                          ),
                          content: Text(
                            word,
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed: () {
                                  game_finished = "Finally yes";
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Diary()),
                                  );
                                },
                                child: Text('Read the page'),
                              ),
                            ),

                          ],
                        ),
                      );


                    }
                  }
                }
              }
              else if (letters_in_word == 10) {
                if (current_letter_1 == "") {
                  current_letter_1 = current_letter;
                } else if (current_letter_2 == "") {
                  current_letter_2 = current_letter;
                } else if (current_letter_3 == "") {
                  current_letter_3 = current_letter;
                } else if (current_letter_4 == "") {
                  current_letter_4 = current_letter;
                } else if (current_letter_5 == "") {
                  current_letter_5 = current_letter;
                } else if (current_letter_6 == "") {
                  current_letter_6 = current_letter;
                } else if (current_letter_7 == '') {
                  current_letter_7 = current_letter;
                } else if (current_letter_8 == '') {
                  current_letter_8 = current_letter;
                } else if (current_letter_9 == '') {
                  current_letter_9 = current_letter;
                } else if (current_letter_10 == '') {
                  current_letter_10 = current_letter;
                  if (current_letter_1 == word[0] &&
                      current_letter_2 == word[1] &&
                      current_letter_3 == word[2] &&
                      current_letter_4 == word[3] &&
                      current_letter_5 == word[4] &&
                      current_letter_6 == word[5] &&
                      current_letter_7 == word[6] &&
                      current_letter_8 == word[7] &&
                      current_letter_9 == word[8] &&
                      current_letter_10 == word[9]) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          'You have got a new word!',
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          word,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Stop the game'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: TextButton(
                              onPressed: () {
                                words_list.remove(word);
                                word = random_words();
                                letters_in_word = word.length;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1_Ex()),
                                );
                              },
                              child: Text('Continue'),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
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
            child: Center(
                child: Text(
              current_letter,
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        return true;
      },
      child: Scaffold(
        body: Container(
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
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                                width: 150,
                                height: 150,
                                child: Image(
                                  image: AssetImage(choose_img(id: 0)),
                                  fit: BoxFit.fill,
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                                width: 150,
                                height: 150,
                                child: Image(
                                  image: AssetImage(choose_img(id: 1)),
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                                width: 150,
                                height: 150,
                                child: Image(
                                  image: AssetImage(choose_img(id: 2)),
                                  fit: BoxFit.fill,
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                                width: 150,
                                height: 150,
                                child: Image(
                                  image: AssetImage(choose_img(id: 3)),
                                  fit: BoxFit.fill,
                                )),
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
                        padding: const EdgeInsets.all(20.0),
                        child: Center(child: box()),


                      ),
                    ],
                  )),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            przycisk(current_letter: word[0]),
                            przycisk(
                                current_letter:
                                    (letters_in_word == 10) ? (word[9]) : (l1_check())),
                            przycisk(current_letter:  word[1]),
                            przycisk(
                                current_letter: (letters_in_word == 9 ||
                                        letters_in_word == 10)
                                    ? (word[8])
                                    : (l3_check())),
                            przycisk(current_letter: (letters_in_word==3||letters_in_word == 4 ||
                                letters_in_word == 5 ||
                                letters_in_word == 6 ||
                                letters_in_word == 7 ||
                                letters_in_word == 8 ||
                                letters_in_word == 9 ||
                                letters_in_word == 10)?
                            // (word[2] != word[0] && word[2] != word[1])? word[2]:l4_check()
                                  word[2]
                                :l4_check()),
                          ],
                        ),
                        Row(
                          children: [
                            przycisk(
                                current_letter: (letters_in_word == 5 ||
                                        letters_in_word == 6 ||
                                        letters_in_word == 7 ||
                                        letters_in_word == 8 ||
                                        letters_in_word == 9 ||
                                        letters_in_word == 10)
                                    ?
                                word[4]
                                // (word[4] != word[0] && word[4] != word[1] && word[4] != word[2] && word[4] != word[3])? word[4]:l6_check()
                                    : (l5_check())),
                            przycisk(
                                current_letter: (letters_in_word == 8 ||
                                        letters_in_word == 9 ||
                                        letters_in_word == 10)
                                    ? word[7]
                                // ?(word[7] != word[0] && word[7] != word[1] && word[7] != word[2] && word[7] != word[3] && word[7] != word[4] && word[7] != word[5] && word[7] != word[6])? word[7]:l7_check()

                                    : (l6_check())),
                            przycisk(
                                current_letter: (letters_in_word == 4 ||
                                        letters_in_word == 5 ||
                                        letters_in_word == 6 ||
                                        letters_in_word == 7 ||
                                        letters_in_word == 8 ||
                                        letters_in_word == 9 ||
                                        letters_in_word == 10)
                                    ?
                                word[3]
                                // ((word[3] != word[0] && word[3] != word[1] && word[3] != word[2])? word[3]:l8_check())
                                    : (l7_check())),
                            przycisk(
                                current_letter: (letters_in_word == 7 ||
                                        letters_in_word == 8 ||
                                        letters_in_word == 9 ||
                                        letters_in_word == 10)
                                    ?
                                word[6]
                                // ((word[6] != word[0] && word[6] != word[1] && word[6] != word[2] && word[6] != word[3] && word[6] != word[4] && word[6] != word[5] )? word[6]:l10_check())
                                    : l9_check()),
                                // (l9_check()!=word[0]||l9_check()!=word[1]||l9_check()!=word[2]||l9_check()!=word[3]||l9_check()!=word[4]||l9_check()!=word[5]||l9_check()!=word[6]||l9_check()!=word[7]||l9_check()!=word[8]||l9_check()!=word[9])?(l9_check()):(l10_check())),
                            przycisk(
                                current_letter: (letters_in_word == 6 ||
                                        letters_in_word == 7 ||
                                        letters_in_word == 8 ||
                                        letters_in_word == 9 ||
                                        letters_in_word == 10)
                                    ?
                                word[5]
                                // ((word[5] != word[0] && word[5] != word[1] && word[5] != word[2] && word[5] != word[3] && word[5] != word[4]  )? word[5]:l12_check())
                                    : l10_check()),
                                // (l11_check()!=word[0]||l11_check()!=word[1]||l11_check()!=word[2]||l11_check()!=word[3]||l11_check()!=word[4]||l11_check()!=word[5]||l11_check()!=word[6]||l11_check()!=word[7]||l11_check()!=word[8]||l11_check()!=word[9])?(l11_check()):(l12_check())),
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
