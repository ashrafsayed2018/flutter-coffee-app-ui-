import 'package:coffee_ui/pages/item_page.dart';
import 'package:coffee_ui/utils/price_and_plus_icon.dart';
import 'package:flutter/material.dart';

class Suggested extends StatelessWidget {
  final String? name;
  final String? image;
  final String? price;
  final String? description;
  const Suggested({
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
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // stops: [0.2, 0.5, 0.7, 1],
            colors: [
              Color.fromARGB(255, 21, 19, 19),
              Color.fromARGB(255, 50, 49, 49),
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      name!,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      description!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // price and add icon
                  Flexible(
                    flex: 1,
                    child: PriceAndPlusIcon(price: price),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
