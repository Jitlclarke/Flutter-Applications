import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  
  @override 
  State<DiceRoller> createState() {
    return _DiceRollerState();
    
  }
  
}

//underscore makes class private so other scripts cannot access
class _DiceRollerState  extends State<DiceRoller> {
  var currentDiceRoll = 2;
  //another alternative war to instantiate the image
  //var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice(){
    //alternative onf updating different way to create
    //var diceRoll = Random().nextInt(6) +1;
    //setState function reinitializes or reexecutes the given flutter class.
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +1;
      //currentDiceRoll = diceRoll;
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });

}
  @override

  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [            
              Image.asset(
              //activeDiceImage,
              'assets/images/dice-$currentDiceRoll.png', 
              width: 200,              
              ),
              //the widget below "sizedBox" is an alternative way of adding space between objects 
              //SizedBox(height: 40,
              //),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 50),
                  foregroundColor: Colors.white, 
                  textStyle: const TextStyle(fontSize: 28),),
                child: const Text('Roll Dice Now'),
                ),
              ],
            
            
      
    );
  }

}