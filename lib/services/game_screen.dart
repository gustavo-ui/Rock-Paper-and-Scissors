import 'dart:math';

import 'package:flutter/foundation.dart';

class GameScreen {
  String ganhador(int hand1) {
    Random random = new Random();
    int computer = random.nextInt(3);
    int rock = 1;
    int scissors = 2;
    int paper = 3;
    //int hand1;

    String msg = ', you put $hand1 and computer put $computer';
    String loser = 'you lost';
    String winner = 'you won';
    String tie = 'tie';
    
    if (hand1 != computer) {
      if (hand1 == rock && computer == scissors) {
        msg = winner + msg;
      }
      if (hand1 == rock && computer == paper) {
        msg = loser + msg;
      }
      if (hand1 == scissors && computer == paper) {
        msg = winner + msg;
      }
      if (hand1 == scissors && computer == rock) {
        msg = loser + msg;
      }
      if (hand1 == paper && computer == scissors) {
        msg = loser + msg;
      }
      if (hand1 == paper && computer == rock) {
        msg = winner + msg;
      }
    } else {
      msg = tie + msg;
    }
    print(msg);
    return msg;
  }
}
