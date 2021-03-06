// 3
import 'package:flutter/material.dart';
import 'dart:math';

// create a stateful widget
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftButton = Random().nextInt(3) + 1;
  int rightButton = Random().nextInt(3) + 1;

  // create a random value generator function
  void randomvalue() {
    setState(() {
      leftButton = Random().nextInt(3) + 1;
      rightButton = Random().nextInt(3) + 1;
    });
  }

  // build the logic
  logic() {
    if (leftButton == rightButton) {
      return Text(
        '!!  DRAW  !!',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      );
    } else if (leftButton == 1 && rightButton == 2) {
      return Text(
        '!! Player 1 WIN  !!',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      );
    } else if (leftButton == 2 && rightButton == 1) {
      return Text(
        '!! Player 2 WIN  !!',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      );
    } else if (leftButton == 2 && rightButton == 3) {
      return Text(
        '!! Player 1 WIN  !!',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      );
    } else if (leftButton == 3 && rightButton == 2) {
      return Text(
        '!! Player 2 WIN  !!',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      );
    } else if (leftButton == 3 && rightButton == 1) {
      return Text(
        '!! Player 1 WIN  !!',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      );
    } else if (leftButton == 1 && rightButton == 3) {
      return Text(
        '!! Player 2 WIN  !!',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      );
    }
  }

  // create the scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              logic(),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    randomvalue();
                  },
                  child: Image(
                    image: AssetImage('assets/image$leftButton.png'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    randomvalue();
                  },
                  child: Image(
                    image: AssetImage('assets/image$rightButton.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Player 1',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Player 2',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      // create floating button
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Colors.yellow[300],
        child: Icon(
          Icons.account_balance,
          color: Colors.black,
        ),
      ),
      // set the location of the button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // create the bottom navigation bar
      bottomNavigationBar: BottomAppBar(
          color: Colors.red[300],
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          )),
    );
  }
}
