import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylephone',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 30.0,
            ),
            CutomeButton(
              audiofileName: 'note1.wav',
              keyColor: Color(0xFFDE0000),
            ),
            CutomeButton(
              audiofileName: 'note2.wav',
              keyColor: Color(0xFFFE622C),
            ),
            CutomeButton(
              audiofileName: 'note3.wav',
              keyColor: Color(0xFFFEF600),
            ),
            CutomeButton(
              audiofileName: 'note4.wav',
              keyColor: Color(0xFF00BC00),
            ),
            CutomeButton(
              audiofileName: 'note5.wav',
              keyColor: Color(0xFF009CFE),
            ),
            CutomeButton(
              audiofileName: 'note6.wav',
              keyColor: Color(0xFF000084),
            ),
            CutomeButton(
              audiofileName: 'note7.wav',
              keyColor: Color(0xFF2C009C),
            ),
            BottomButton(),
          ],
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      alignment: Alignment.center,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ColoringLettersWidget(
            letter: "P",
            letterColor: Color(0xFFDE0000),
          ),
          ColoringLettersWidget(
            letter: "I",
            letterColor: Color(0xFFFEF600),
          ),
          ColoringLettersWidget(
            letter: "A",
            letterColor: Color(0xFF00BC00),
          ),
          ColoringLettersWidget(
            letter: "N",
            letterColor: Color(0xFF009CFE),
          ),
          ColoringLettersWidget(
            letter: "O",
            letterColor: Colors.red,
          ),
        ],
      ),
    );
  }
}

class ColoringLettersWidget extends StatelessWidget {
  const ColoringLettersWidget({
    Key? key,
    required this.letter,
    required this.letterColor,
  }) : super(key: key);

  final String letter;
  final Color letterColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      letter,
      style: TextStyle(
        fontSize: 50.0,
        color: letterColor,
      ),
    );
  }
}

class CutomeButton extends StatelessWidget {
  const CutomeButton({required this.audiofileName, required this.keyColor});
  final String audiofileName;
  final Color keyColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final audioPlayer = AudioCache();
          audioPlayer.play(audiofileName);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
          height: 80.0,
          width: double.infinity,
          color: keyColor,
        ),
      ),
    );
  }
}
