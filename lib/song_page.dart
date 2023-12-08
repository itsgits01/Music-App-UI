import 'package:flutter/material.dart';
import 'package:music_app/neu_box/neu_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //back button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                    Text("P L A Y L  I S T"),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                //cover art
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('assets/images/img.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'D Songs',
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Birdie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 28,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //start time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NeuBox(child: Text("0:00")),
                    NeuBox(child: Icon(Icons.shuffle_rounded)),
                    NeuBox(child: Icon(Icons.repeat)),
                    NeuBox(child: Text("4:22")),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                //linear progresss bar
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //prevouios play and pause
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: NeuBox(
                          child: Icon(Icons.skip_previous_rounded,size: 40,),
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child:Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: NeuBox(child: Icon(Icons.play_arrow_rounded,size: 50,)),
                        ),
                      ),

                      Expanded(
                        child: NeuBox(child: Icon(Icons.skip_next_rounded,size: 40,)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
