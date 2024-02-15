import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

void playSound( int soundNum){
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNum.wav'));

}

Widget buttonWidget(int num , Color color){
  return Expanded(
    child: Card(
      color: color,
      child: ListTile(
        onTap: (){
          playSound(num);
        },
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('xylophone'),
          ),
        ),
        body: Column(
          children: [
            buttonWidget(1, Colors.red),
            buttonWidget(2, Colors.orange),
            buttonWidget(3, Colors.yellow),
            buttonWidget(4, Colors.green),
            buttonWidget(5, Colors.teal),
            buttonWidget(6, Colors.blue),
            buttonWidget(7, Colors.purple),

         ],
        ),
      ),
    );
  }
}
