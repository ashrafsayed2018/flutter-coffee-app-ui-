import 'package:coffee_ui/data/coffee.dart';
import 'package:coffee_ui/utils/coffee_tile.dart';
import 'package:coffee_ui/utils/coffee_type.dart';
import 'package:coffee_ui/utils/suggested.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  // coffee type list
  List coffeeTypeList = [
    ['كابيتشينو', true],
    ['قهوة لاتيه', false],
    ['قهوة حليب', false],
    ['قهوة عربي', false],
    ['قهوة تركي', false],
    ['قهوة فرنسي', false],
  ];

  List coffeeList = Coffee.coffeeList;
  // when user tapped on coffee type
  coffeeTypeSelecte(int index) {
    setState(() {
      for (int i = 0; i < coffeeTypeList.length; i++) {
        coffeeTypeList[i][1] = false;
      }
      coffeeTypeList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.list_alt_rounded),
        actions: [
          CircleAvatar(
            radius: 15,
            child: Image.network(
                "https://media.istockphoto.com/photos/young-beautiful-woman-picture-id1383847569?b=1&k=20&m=1383847569&s=170667a&w=0&h=pC_PvLmhLl0VMVEWHJLZQfvobYJaFVc7sKvt2tMt-ow="),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text find the best coffee for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "افضل انواع القهوه لك",
                style: GoogleFonts.amiri(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // search bar
            const SearchBar(),
            const SizedBox(
              height: 25,
            ),
            //  horizontal list of coffee types
            Container(
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: coffeeTypeList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return CoffeeType(
                    coffeeType: coffeeTypeList[index][0],
                    isSelected: coffeeTypeList[index][1],
                    onTap: () {
                      coffeeTypeSelecte(index);
                    },
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //  horizontal list of coffee tiles
            Container(
              height: 280,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CoffeeTile(
                      name: coffeeList[index].name,
                      image: coffeeList[index].image,
                      price: coffeeList[index].price,
                      description: coffeeList[index].description);
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("مقترح لك "),
                  const SizedBox(
                    height: 40,
                  ),
                  Suggested(
                    name: coffeeList[2].name,
                    price: coffeeList[2].price,
                    image: coffeeList[2].image,
                    description: coffeeList[2].description,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          )
        ],
      ),
    );
  }
}
