class Product {
  final int id;
  final String title, description, image, category;

  Product(
      {required this.id,
      required this.category,
      required this.title,
      required this.description,
      required this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    category: 'M',
    title: "Hamburguesa Clásica",
    image: "assets/img/burger.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    category: 'A',
    title: "Salchipapa",
    image: "assets/img/burger.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    category: 'B',
    title: "BBQ",
    image: "assets/img/burger.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    category: 'A',
    title: "Alitas Buffalo",
    image: "assets/img/burger.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
