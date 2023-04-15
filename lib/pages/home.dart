import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> recentlyPlayed = [
    "assets/images/pexels-erik-mclean-7751832.jpg",
    "assets/images/pexels-miguel-á-padriñán-5764284.jpg",
    "assets/images/pexels-erik-mclean-7751832.jpg",
    "assets/images/pexels-miguel-á-padriñán-5764284.jpg",
    "assets/images/pexels-erik-mclean-7751832.jpg",
    "assets/images/pexels-miguel-á-padriñán-5764284.jpg",
    "assets/images/pexels-erik-mclean-7751832.jpg",
    "assets/images/pexels-miguel-á-padriñán-5764284.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: const Text("Good evening"),
      //   actions: const [
      //     Icon(Icons.notifications_outlined, size: 26, color: Colors.white),
      //     SizedBox(width: 10),
      //     Icon(Icons.more_time_sharp, size: 26, color: Colors.white),
      //     SizedBox(width: 10),
      //     Icon(Icons.settings_outlined, size: 26, color: Colors.white),
      //     SizedBox(width: 10)
      //   ],
      // ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Good evening",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_outlined,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_time_sharp,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings_outlined,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white24),
                            overlayColor: MaterialStateProperty.all(
                              const Color.fromRGBO(30, 215, 96, 1),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Music",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white24),
                            overlayColor: MaterialStateProperty.all(
                              const Color.fromRGBO(30, 215, 96, 1),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Podcasts & Shows",
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently played",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.home),
                            SizedBox(width: 10),
                            Icon(Icons.add)
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < recentlyPlayed.length; i++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  recentlyPlayed[i],
                                  width: 100.0,
                                  height: 100.0,
                                ),
                                const Text("Song Title")
                              ],
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
