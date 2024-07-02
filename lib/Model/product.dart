class Product {
  final String image;
  final int id;
  final String name;
  final String price;

  Product({
    required this.image,
    required this.id,
    required this.name,
    required this.price,
  });
}

final mostPopulaProduct = [
  Product(
    image: 'assets/images/Spring_prev_ui 1.png',
    id: 1,
    name: 'Nike',
    price: '2500',
  ),
  Product(
    image: 'assets/images/ps4_console_white_1.png',
    id: 2,
    name: 'Ps4 Console',
    price: '7500',
  ),
  Product(
    image: 'assets/images/ps4_console_blue_1.png',
    id: 3,
    name: 'Ps4 Console',
    price: '7500',
  ),
];

final otherProducts = [
  Product(
    image: 'assets/images/tshirt.png',
    id: 4,
    name: 'T Shirt',
    price: '1500',
  ),
  Product(
      image: 'assets/images/product 1 image.png',
      id: 5,
      name: 'T Shirt',
      price: '1500'),
  Product(
    image: 'assets/images/image 27.png',
    id: 6,
    name: 'Shoe',
    price: '3500',
  ),
  Product(
      image: 'assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
      id: 7,
      name: 'Banana',
      price: '100'),
  Product(
    image: 'assets/images/bag_1.png',
    id: 8,
    name: 'Bag',
    price: '2500',
  ),
  Product(
      image: 'assets/images/egg-noodle (1) 2.png',
      id: 9,
      name: 'Noodle',
      price: '500'),
  Product(
      image: 'assets/images/pngfuel 5.png',
      id: 10,
      name: 'Chicken',
      price: '4500'),
];
