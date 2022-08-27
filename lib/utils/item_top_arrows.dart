import 'package:flutter/material.dart';

class ItemTopArrows extends StatefulWidget {
  const ItemTopArrows({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemTopArrows> createState() => _ItemTopArrowsState();
}

class _ItemTopArrowsState extends State<ItemTopArrows> {
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.grey[500],
              ),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  isFavorited = !isFavorited;
                });
              },
              child: Icon(
                Icons.favorite,
                size: 20,
                color: isFavorited ? Colors.orange[500] : Colors.grey[500],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
