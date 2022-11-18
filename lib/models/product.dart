class Product {
  const Product(
      {required this.id,
      required this.title,
      required this.category,
      required this.image,
      required this.subTitle,
      required this.description,
      required this.price});

  final String id, title, category, image, subTitle, description;
  final int price;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        title: json['title'],
        category: json['category'],
        image: json['image'],
        subTitle: json['subTitle'],
        description: json['description'],
        price: json['price'],
      );
}

//demo product
// Product product = Product(
//     id: '1',
//     title: 'Wood Frame',
//     category: 'Chair',
//     image: 'https://i.imgur.com/sI4GvE6.png',
//     subTitle: 'Tieton Armchair',
//     description: description,
//     price: 1600);

// String description =
//     'This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.';
