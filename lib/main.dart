import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundtrack){
    final player = AudioCache();
    player.play('note$soundtrack.wav');
  }

  void selectkey(){
 
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Expanded(
            child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.red),onPressed: (){
              playsound(1);
            }, child: Text('click me_1',style: TextStyle(color: Colors.white),),
            ),
          ),
          Expanded(
            child: TextButton(style:TextButton.styleFrom(backgroundColor: Colors.blue),onPressed: (){
              playsound(2);
            }, child: Text('click me_2'),
            ),
          ),Expanded(
              child: TextButton(style:TextButton.styleFrom(backgroundColor: Colors.green),onPressed: (){
                playsound(3);
              }, child: Text('click me_3'),
              ),
            ),Expanded(
              child: TextButton(style:TextButton.styleFrom(backgroundColor: Colors.amber),onPressed: (){
                playsound(4);
              }, child: Text('click me_4'),
              ),
            ),Expanded(
              child: TextButton(style:TextButton.styleFrom(backgroundColor: Colors.deepPurple),onPressed: (){
                playsound(5);
              }, child: Text('click me_5'),
              ),
            ),Expanded(
              child: TextButton(style:TextButton.styleFrom(backgroundColor: Colors.pink),onPressed: (){
                playsound(6);
              }, child: Text('click me_6'),
              ),
            ),Expanded(
              child: TextButton(style:TextButton.styleFrom(backgroundColor: Colors.indigo),onPressed: (){
                playsound(7);
              }, child: Text('click me_7'),
              ),
            ),
    ],
        ),
    )
    );
  }
}
