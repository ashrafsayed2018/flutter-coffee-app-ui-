import 'package:flutter/material.dart';

class PriceAndPlusIcon extends StatelessWidget {
  const PriceAndPlusIcon({
    Key? key,
    required this.price,
  }) : super(key: key);

  final String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$price \$"),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.orange[400],
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
