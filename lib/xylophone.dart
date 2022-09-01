





import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

double screenheight = 0;
  double screenwidth = 0;

class XyloPhoneScreen extends StatefulWidget {
  const XyloPhoneScreen({Key? key}) : super(key: key);

  @override
  State<XyloPhoneScreen> createState() => _XyloPhoneScreenState();
}


 

class _XyloPhoneScreenState extends State<XyloPhoneScreen> {
  

  final assetsAudioPlayer = AssetsAudioPlayer();


 Widget clickingKeys(var value , double height, int song){

  return GestureDetector(
    onTap: () {
      assetsAudioPlayer.open(
    Audio("assets/music/note$song.wav"),
);
    },
              child: Container(
                color: value,
                width: double.infinity,
                height: height,
              ),
            );

 }
  @override
  Widget build(BuildContext context) {
     screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    double heigh = screenheight*0.121;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 74.5,
        title: const Text('Xylophone',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
      ),
      
      body: SafeArea(
        child: Column(
          children: [
            
             clickingKeys(Colors.purple,heigh,1),
             clickingKeys(const Color.fromARGB(255, 0, 0, 0),heigh,2),
             clickingKeys(const Color.fromARGB(255, 55, 39, 176),heigh,3),
             clickingKeys(const Color.fromARGB(255, 13, 190, 22),heigh,4),
             clickingKeys(const Color.fromARGB(255, 70, 17, 3),heigh,5),
             clickingKeys(const Color.fromARGB(255, 255, 60, 6),heigh,6),
             clickingKeys(const Color.fromARGB(255, 8, 175, 187),heigh,7),
            
          ],
        ),
      ),
    );
  }
}