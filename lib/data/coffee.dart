class Coffee {
  final String? name;
  final String? image;
  final String? price;
  final String? description;
  const Coffee({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });

  static const List<Coffee> coffeeList = [
    Coffee(
      name: "قهوه لاتيه",
      image: "assets/images/lattie.jpg",
      description: "مع حليب باللوز",
      price: "100.00",
    ),
    Coffee(
      name: "قهوه كابيتشنو",
      image: "assets/images/cappicino.jpg",
      description: "مع حليب باللوز",
      price: "50.00",
    ),
    Coffee(
      name: "قهوه بالحليب",
      image: "assets/images/milk.jpg",
      description: "مع حليب باللوز",
      price: "80.00",
    ),
  ];
}
