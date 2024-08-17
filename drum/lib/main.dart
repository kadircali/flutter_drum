// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrumPage(),
    );
  }
}

class DrumPage extends StatefulWidget {
  const DrumPage({super.key});

  @override
  State<DrumPage> createState() => _DrumPageState();
}

class _DrumPageState extends State<DrumPage> {
  final oynatici = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      oynatici.play(AssetSource("bip.wav"));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.red),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      oynatici.play(AssetSource("bongo.wav"));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      oynatici.play(AssetSource("clap1.wav"));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.yellow),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      oynatici.play(AssetSource("clap2.wav"));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.brown),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      oynatici.play(AssetSource("clap3.wav"));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.blue),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      oynatici.play(AssetSource("crash.wav"));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.purple),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      oynatici.play(AssetSource("how.wav"));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      oynatici.play(AssetSource("oobah.wav"));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
