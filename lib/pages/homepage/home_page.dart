import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'discover_homepage.dart';
import 'trending_homepage.dart';
import 'music_homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;
  final _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0C0C),
      appBar: getAppBar(),
      body: getBody(),
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
          CircleAvatar(
            radius: 20.0,
          ),
          Text(
            'Hello, Williams',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            width: 130.0,
          ),
          Icon(Icons.shopping_cart_outlined),
          Icon(Icons.account_balance_wallet_outlined)
        ],
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: List.generate(homeType_1.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: GestureDetector(
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
                                : const Color(0xff1E1E1E),
                          ),
                          width: 90.0,
                          height: 35.0,
                          child: Center(
                            child: Text(
                              homeType_1[index],
                              style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ), //MENU
                );
              }),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // Conditionally show different content based on the selected menu
          getCarouselSlider(),
          const SizedBox(
            height: 30,
          ),

          activeMenu1 == 0
              ? getMusicSection()
              : activeMenu1 == 1
                  ? getTrendingSection()
                  : activeMenu1 == 2
                      ? getDiscoverSection()
                      : Container(),
        ],
      ),
    );
  }

  Widget getCarouselSlider() {
    return CarouselSlider(
      carouselController: _carouselController,
      options: CarouselOptions(
        height: 182.94,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
      ),
      items: [
        'assets/images/album1.jpeg',
        'assets/images/album2.jpeg',
        'assets/images/album3.jpeg',
        'assets/images/album4.jpeg',
      ].map((item) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              item,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        );
      }).toList(),
    );
  }
}

List<String> homeType_1 = ['Music', 'Trending', 'Discover'];
