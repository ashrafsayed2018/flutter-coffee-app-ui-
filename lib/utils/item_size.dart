import 'package:flutter/material.dart';

class ItemSize extends StatelessWidget {
  final String size;
  final bool isSelected;
  const ItemSize({
    required this.size,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .27,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? Colors.orange : Colors.white,
            width: 1,
          )),
      child: Text(
        size,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isSelected ? Colors.orange : Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
