import 'package:coffee_ui/utils/description.dart';
import 'package:coffee_ui/utils/item_image.dart';
import 'package:coffee_ui/utils/order.dart';
import 'package:coffee_ui/utils/sizes.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final String price;
  const ItemPage({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ItemImage(
              image: widget.image,
              name: widget.name,
              descirption: widget.description,
            ),
            const SizedBox(
              height: 20,
            ),
            // page second half
            SizedBox(
              height: MediaQuery.of(context).size.height * .45,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  // descirption
                  const Positioned(
                    right: 0,
                    child: Description(),
                  ),
                  // sizes
                  const Positioned(
                    top: 120,
                    right: 0,
                    left: 0,
                    child: Sizes(),
                  ),

                  // order now
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Order(
                      price: widget.price,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
