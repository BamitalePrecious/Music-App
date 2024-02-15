// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'homepage/home_page.dart';
import 'searchpage.dart';
import 'playlist/playlist.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [miniPlayer(), getFooter()],

        // getFooter()
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: const [
        HomePage(),
        SearchPage(),
        PlaylistPage(),
        Center(
          child: Text(
            'Artiste',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget miniPlayer() {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xff303030),
                    ),
                    height: 55,
                    width: 45,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/album1.jpeg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Davido',
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              child: const Row(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.play_arrow,
                        color: Color(0xff423FED),
                        size: 25.0,
                      )),
                  SizedBox(
                    width: 1.0,
                  ),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.queue_music,
                        color: Colors.white,
                        size: 25.0,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getFooter() {
    List<Map<String, dynamic>> items = [
      {'icon': Icons.home, 'label': 'Home'},
      {'icon': Icons.search, 'label': 'Search'},
      {'icon': Icons.playlist_play, 'label': 'Playlist'},
      {'icon': Icons.mic, 'label': 'Artiste'},
    ];

    return Container(
      height: 80,
      color: Color(0xff101010),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(4, (index) {
            return Column(
              children: [
                IconButton(
                  icon: Icon(
                    items[index]['icon'],
                    color: activeTab == index
                        ? const Color(0xFF423FED)
                        : Color(0xffA6A6A6),
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  },
                ),
                Text(
                  items[index]['label'],
                  style: TextStyle(
                    color: activeTab == index
                        ? const Color(0xFFffffff)
                        : Color(0xffA6A6A6),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
