import 'package:coffee_ui/utils/item_size.dart';
import 'package:flutter/material.dart';

class Sizes extends StatelessWidget {
  const Sizes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          "الاحجام ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ItemSize(
              size: "S",
              isSelected: true,
            ),
            ItemSize(
              size: "M",
              isSelected: false,
            ),
            ItemSize(
              size: "L",
              isSelected: false,
            ),
          ],
        )
      ],
    );
  }
}
