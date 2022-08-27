import 'package:coffee_ui/utils/item_label_icons.dart';
import 'package:flutter/material.dart';

class ItemLabel extends StatelessWidget {
  final String name;
  final String descirption;
  const ItemLabel({
    required this.name,
    required this.descirption,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 140,
        decoration: BoxDecoration(
          color: const Color(0xff633a00).withAlpha(235),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  ItemLabelIcons(
                    iconData: Icons.fire_extinguisher,
                    text: "خليط",
                  ),
                  SizedBox(width: 15),
                  ItemLabelIcons(
                    iconData: Icons.coffee,
                    text: "قهوة",
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 30),
                  ),
                  Text(
                    descirption,
                    style: TextStyle(fontSize: 15, color: Colors.grey[200]),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // rating
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange[500],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "4.6",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "(6564)",
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                ],
              ),
              Container(
                width: 100,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "حجم متوسط",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
