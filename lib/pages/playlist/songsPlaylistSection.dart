import 'package:flutter/material.dart';
import 'package:t_trade/json/songs_json.dart';

songsPlaylistSection() {
  return Column(
    children: List.generate(allPlaylistSongs.length, (index) {
      return GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 10, right: 10),
          child: GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  SizedBox(
                    height: 90.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      allPlaylistSongs[index]['img'],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  allPlaylistSongs[index]['title'],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  allPlaylistSongs[index]['artiste'],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ), //name
                              ],
                            )
                          ],
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              allPlaylistSongs[index]['price'],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: 70.0,
                            ),
                            const Center(
                              child: Icon(
                                Icons.menu_sharp,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      );
    }),
  );
}
