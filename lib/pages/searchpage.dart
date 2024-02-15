import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0C0C),
      appBar: getAppBar(),
      body: searchBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff0C0C0C),
      elevation: 0,
      title: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  'Search',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 190.0,
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

  searchBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          child: searchField(),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Genres',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Explore genres',
                style: TextStyle(
                  color: Color(
                    0xffA6A6A6,
                  ),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        cards()
      ],
    );
  }

  Padding cards() {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Row(children: [
              genreCard(
                label: 'Afro Beats',
                color: Color(0xff7D1716),
              ),
              SizedBox(
                width: 20.0,
              ),
              genreCard(
                label: 'Afro Pop',
                color: Color(0xff0E2846),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: Row(children: [
              genreCard(
                label: 'Amapiano',
                color: Color(0xff126C1B),
              ),
              SizedBox(
                width: 20.0,
              ),
              genreCard(
                label: 'Gospel',
                color: Color(0xffC75211),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: Row(children: [
              genreCard(
                label: 'Reggae',
                color: Color(0xff0D5761),
              ),
              SizedBox(
                width: 20.0,
              ),
              genreCard(
                label: 'Fuji',
                color: Color(0xff75175A),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: Row(children: [
              genreCard(
                label: 'Traditional',
                color: Color(0xff1E1E1E),
              ),
              SizedBox(
                width: 20.0,
              ),
              genreCard(
                label: 'R n B',
                color: Color(0xffC71F1D),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  TextField searchField() {
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: _searchController,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 1.0),
        fillColor: Color(0xff303030),
        filled: true,
        hintText: 'Search for anything',
        focusColor: Color(0xffA6A6A6),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white,
          size: 35.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide: BorderSide(width: 2.0, color: Color(0xff585858)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 2.0, color: Color(0xff585858)),
        ),
      ),
      onChanged: (value) {
        setState(() {
          _searchQuery = value;
        });
      },
    );
  }
}

// ignore: camel_case_types
class genreCard extends StatelessWidget {
  final String? label;
  final Color? color;

  const genreCard({
    super.key,
    this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 99.0,
        width: 185.0,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text(
          label!,
          style: const TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w800),
        )),
      ),
    );
  }
}
