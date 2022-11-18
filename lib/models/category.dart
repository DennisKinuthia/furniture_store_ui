class Category {
  const Category(
      {required this.id,
      required this.title,
      required this.image,
      required this.numOfProducts});

  final String id, title, image;
  final int numOfProducts;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        numOfProducts: json['numOfProducts'],
      );
}

//demo category
// Category category = const Category(
//   id: '1',
//   title: 'Armchaire',
//   image: 'https://i.imgur.com/JqKDdxj.png',
//   numOfProducts: 100,
// );
