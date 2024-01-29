import 'package:audioplayers/audioplayers.dart';
import 'package:beats/views/screens/about_beats.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MusicLibrary extends StatefulWidget {
  const MusicLibrary({super.key});
  @override
  State<MusicLibrary> createState() => _MusicLibraryState();
}

class _MusicLibraryState extends State<MusicLibrary> {
  static int playIndex = 0;
  bool isPlaying = false;
  final audioPlayer = AudioPlayer();
  String deltaBeatsUrl =
      "DJSnakeft.JustinBieberLetMeLoveYou(Official Video).mp3";
  String thetaBeatsUrl = "JustinBieberAsIAm(Visualizer)ft.Khalid.mp3";
  String alphaBeatsUrl =
      "JustinBieberXFreeFireBeautifulLove(FreeFire)[OfficialVideo].mp3";
  String betaBeatsUrl = "Mood(Remix).mp3";
  String gammaBeatsUrl = "JustinBieberDeserveYou.mp3";
  pause() {
    audioPlayer.pause();
    isPlaying = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        enableSideReveal: true,
        slideIconWidget: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        pages: [
          SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/sleep.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SafeArea(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => AboutBeats.deltaBeats(),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Delta Beats",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (playIndex == 0) {
                                    if (isPlaying) {
                                      pause();
                                    } else {
                                      // pause();
                                      audioPlayer
                                          .play(AssetSource(deltaBeatsUrl));
                                      isPlaying = true;
                                      audioPlayer
                                          .setReleaseMode(ReleaseMode.loop);
                                    }
                                  } else {
                                    playIndex = 0;
                                    pause();
                                    isPlaying = true;
                                    audioPlayer
                                        .play(AssetSource(deltaBeatsUrl));
                                    audioPlayer
                                        .setReleaseMode(ReleaseMode.loop);
                                  }
                                });
                              },
                              icon: isPlaying && playIndex == 0
                                  ? const Icon(
                                      Icons.pause,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/meditate.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SafeArea(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => AboutBeats.thetaBeats(),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Theta Beats",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (playIndex == 1) {
                                    // isPlaying = !isPlaying;
                                    // audioController.audioPlayer(
                                    //     thetaBeatsUrl, isPlaying);
                                    if (isPlaying) {
                                      pause();
                                    } else {
                                      // pause();
                                      isPlaying = true;
                                      audioPlayer
                                          .play(AssetSource(thetaBeatsUrl));
                                      audioPlayer
                                          .setReleaseMode(ReleaseMode.loop);
                                    }
                                  } else {
                                    playIndex = 1;
                                    pause();
                                    isPlaying = true;
                                    audioPlayer
                                        .play(AssetSource(thetaBeatsUrl));
                                    audioPlayer
                                        .setReleaseMode(ReleaseMode.loop);
                                    // audioController.audioPlayer(
                                    //     thetaBeatsUrl, isPlaying);
                                  }
                                });
                              },
                              icon: isPlaying && playIndex == 1
                                  ? const Icon(
                                      Icons.pause,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/relaxed.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SafeArea(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => AboutBeats.alphaBeats(),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Alpha Beats",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (playIndex == 2) {
                                    // isPlaying = !isPlaying;
                                    // audioController.audioPlayer(
                                    //     alphaBeatsUrl, isPlaying);
                                    if (isPlaying) {
                                      pause();
                                    } else {
                                      // pause();
                                      isPlaying = true;
                                      audioPlayer
                                          .play(AssetSource(alphaBeatsUrl));
                                      audioPlayer
                                          .setReleaseMode(ReleaseMode.loop);
                                    }
                                  } else {
                                    playIndex = 2;
                                    pause();
                                    isPlaying = true;
                                    audioPlayer
                                        .play(AssetSource(alphaBeatsUrl));
                                    audioPlayer
                                        .setReleaseMode(ReleaseMode.loop);
                                    // audioController.audioPlayer(
                                    //     alphaBeatsUrl, isPlaying);
                                  }
                                });
                              },
                              icon: isPlaying && playIndex == 2
                                  ? const Icon(
                                      Icons.pause,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/study.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SafeArea(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => AboutBeats.betaBeats(),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Beta Beats",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (playIndex == 3) {
                                    // isPlaying = !isPlaying;
                                    // audioController.audioPlayer(
                                    //     betaBeatsUrl, isPlaying);
                                    if (isPlaying) {
                                      pause();
                                    } else {
                                      // pause();
                                      isPlaying = true;
                                      audioPlayer
                                          .play(AssetSource(betaBeatsUrl));
                                      audioPlayer
                                          .setReleaseMode(ReleaseMode.loop);
                                    }
                                  } else {
                                    playIndex = 3;
                                    pause();
                                    isPlaying = true;
                                    audioPlayer.play(AssetSource(betaBeatsUrl));
                                    audioPlayer
                                        .setReleaseMode(ReleaseMode.loop);
                                    // audioController.audioPlayer(
                                    //     betaBeatsUrl, isPlaying);
                                  }
                                });
                              },
                              icon: isPlaying && playIndex == 3
                                  ? const Icon(
                                      Icons.pause,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/girl.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SafeArea(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => AboutBeats.gammaBeats(),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Gamma Beats",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (playIndex == 4) {
                                    // isPlaying = !isPlaying;
                                    // audioController.audioPlayer(
                                    //     gammaBeatsUrl, isPlaying);
                                    if (isPlaying) {
                                      pause();
                                    } else {
                                      // pause();
                                      isPlaying = true;
                                      audioPlayer
                                          .play(AssetSource(gammaBeatsUrl));
                                      audioPlayer
                                          .setReleaseMode(ReleaseMode.loop);
                                    }
                                  } else {
                                    playIndex = 4;
                                    pause();
                                    isPlaying = true;
                                    audioPlayer
                                        .play(AssetSource(gammaBeatsUrl));
                                    audioPlayer
                                        .setReleaseMode(ReleaseMode.loop);
                                    // audioController.audioPlayer(
                                    //     gammaBeatsUrl, isPlaying);
                                  }
                                });
                              },
                              icon: isPlaying && playIndex == 4
                                  ? const Icon(
                                      Icons.pause,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
