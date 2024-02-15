import 'package:flutter/material.dart';
import 'albumsPlaylistSection.dart';
import 'allPlaylistSection.dart';
import 'songsPlaylistSection.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  int activeMenu1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0C0C),
      appBar: getAppBar(),
      body: playlistBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff0C0C0C),
      elevation: 0,
      title: const Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'My Playlist',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 120.0,
                ),
                Icon(Icons.search_outlined),
                SizedBox(
                  width: 25.0,
                ),
                Icon(Icons.shopping_cart_outlined),
                SizedBox(
                  width: 25.0,
                ),
                Icon(Icons.account_balance_wallet_outlined)
              ],
            ),
          ),
        ],
      ),
    );
  }

  playlistBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          activeMenu1 == 0
              ? Image.asset(
                  'assets/allpc.png',
                )
              : activeMenu1 == 1
                  ? Image.asset(
                      'assets/songspc.png',
                    )
                  : activeMenu1 == 2
                      ? Image.asset(
                          'assets/albumspc.png',
                        )
                      : Container(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xff161616)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(homeType_1.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        activeMenu1 = index;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: activeMenu1 == index
                                ? const Color(0xFF423FED)
                                : const Color(0xff161616),
                          ),
                          width: 110.0,
                          height: 40.0,
                          child: Center(
                            child: Text(
                              homeType_1[index],
                              style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          activeMenu1 == 0
              ? allPlaylistSection()
              : activeMenu1 == 1
                  ? songsPlaylistSection()
                  : activeMenu1 == 2
                      ? albumsPlaylistSection()
                      : Container(),
        ],
      ),
    );
  }
}

List<String> homeType_1 = ['All', 'Songs', 'Albums'];
