import 'package:coffee_ui/utils/item_label.dart';
import 'package:coffee_ui/utils/item_top_arrows.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String image;
  final String name;
  final String descirption;

  const ItemImage({
    required this.image,
    required this.name,
    required this.descirption,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const ItemTopArrows(),
          ItemLabel(
            name: name,
            descirption: descirption,
          )
        ],
      ),
    );
  }
}
