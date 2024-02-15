import 'package:flutter/material.dart';
import 'package:t_trade/json/songs_json.dart';

Widget getTrendingSection() {
  return Column(
    children: List.generate(
      trendingSongs.length,
      (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 10, right: 10),
          child: GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    height: 90.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              trendingSongs[index]['trendingId'],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
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
                                      trendingSongs[index]['img'],
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
                                  trendingSongs[index]['title'],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  trendingSongs[index]['artiste'],
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              trendingSongs[index]['price'],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              height: 30.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF423FED),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: const Center(
                                child: Text(
                                  'Buy',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    ),
  );
}
