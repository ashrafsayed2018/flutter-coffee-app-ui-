import 'package:coffee_ui/pages/item_page.dart';
import 'package:coffee_ui/utils/price_and_plus_icon.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String? name;
  final String? image;
  final String? price;
  final String? description;
  const CoffeeTile({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ItemPage(
                  image: image!,
                  name: name!,
                  description: description!,
                  price: price!);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              // stops: [0.2, 0.5, 0.7, 1],
              colors: [
                Color.fromARGB(255, 14, 13, 13),
                Color.fromARGB(255, 39, 39, 39),
              ],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // coffee image
            SizedBox(
              height: 150,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // coffee name
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                children: [
                  Text(
                    name!,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    description!,
                    style: TextStyle(color: Colors.grey.shade400),
                  )
                ],
              ),
            ),
            // price and add icon
            PriceAndPlusIcon(price: price)
          ]),
        ),
      ),
    );
  }
}
