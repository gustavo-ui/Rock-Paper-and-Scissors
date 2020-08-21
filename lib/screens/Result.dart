import 'package:flutter/material.dart';
import 'package:pedrap_tesoura/screens/Game.dart';
import 'package:pedrap_tesoura/services/game_screen.dart';

class Result extends StatefulWidget {
  final int hand;
  Result({this.hand}); //hash map

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String win;
  @override
  void initState() {
    // função chamada quando entrar em tela primeir vez

    super.initState();
    GameScreen ganhador = new GameScreen();
    win = ganhador.ganhador(widget.hand);
    print('AAAAAAAAAAAAAAAAAAAAAAAAAAAA.. ${widget.hand}');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff222222),
        body: Container(
          padding: EdgeInsets.only(top: 60, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 350,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: SizedBox.expand(
                  child: FittedBox(
                    child: Text(
                      win,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: SizedBox.expand(
                        child: FlatButton(
                            child: FittedBox(
                              child: Text(
                                " PLAY AGAIN",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.amberAccent,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Game()),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
