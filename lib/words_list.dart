import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

List<String> words_list = [
  'DAY',
  'FOOL',
  'BIRDS',
  'DREAMS',
  'MORNING',
  'WINGS',
  'ALTITUDE',
  'HORIZON',
  'THINK',
  'SCREAM',
  'DATE',
  'AFRAID',
  'GIRLS',
  'LAUGHTER',
  'SOUL',
  'EVENING',
  'GUILT',
  'KISS',
  'BREATH',
  'MESSAGE',
  'SALVATION',
  'DISAPPEAR'
];
int word_number = 0;

var rng = Random();

String random_words() {
  for (var i=0; i<=words_list.length;i++){
    return words_list[i];
  }
  return words_list[0];
}

String game_finished = 'Not yet';


/**String random_words() {
  word_number = rng.nextInt(8);
  final w = words_list[word_number];
  return w;
}**/

/**String import_letters(){
  for(var i=0;i<count_letter;i++){
    if(word[i]!=''){
      String current_letter_words=word[i];
      return current_letter_words;
    }
  }
  return null.toString();
}**/
