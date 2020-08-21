import 'package:flutter/material.dart';
import 'package:pedrap_tesoura/screens/result.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff222222),
        body: Container(
          padding: EdgeInsets.only(top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //rock bottom
                    height: 100,
                    width: 100,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                          child: FittedBox(
                            child: Text(
                              " ROCK",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Result(
                                        hand: 1,
                                      )),
                            );
                          }),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //rock bottom
                    height: 100,
                    width: 100,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                          child: FittedBox(
                            child: Text(
                              " PAPER",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Result(
                                        hand: 3,
                                      )),
                            );
                          }),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //rock bottom
                    height: 100,
                    width: 100,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                          child: FittedBox(
                            child: Text(
                              " SCISSORS",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Result(
                                        hand: 2,
                                      )),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
