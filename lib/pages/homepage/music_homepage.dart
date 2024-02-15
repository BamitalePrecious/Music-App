import 'package:flutter/material.dart';
import 'package:t_trade/json/songs_json.dart';

Widget getMusicSection() {
  return Column(
    children: [
      hotlistSection(),
      const SizedBox(
        height: 30.0,
      ),
      freshSoundSection(),
    ],
  );
}

Padding hotlistSection() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Hot List',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: List.generate(
                songs.length - 8,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 23.0, top: 20.0),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      songs[index]['img'],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                songs[index]['artiste'] +
                                    ": " +
                                    songs[index]['title'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                songs[index]['price'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        bodyShoppingCart(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ]),
  );
}

Padding freshSoundSection() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Fresh Sound',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: List.generate(
                songs.length - 8,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 23.0, top: 20.0),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      songs[index]['img'],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                songs[index]['artiste'] +
                                    ": " +
                                    songs[index]['title'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                songs[index]['price'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        bodyShoppingCart(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ]),
  );
}

GestureDetector bodyShoppingCart() {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.only(top: 3.0, right: 1.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFF423FED),
            borderRadius: BorderRadius.circular(30.0)),
        width: 40.0,
        height: 40.0,
        child: const Icon(
          Icons.shopping_cart_outlined,
          size: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
}
