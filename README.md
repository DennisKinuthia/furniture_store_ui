# Furniture Store UI - Flutter

#### UI from [The Flutter Way](https://www.youtube.com/@TheFlutterWay)

## Learning Points
1. Project Structure. The project screen components are packaged together in seperate file to ease maintanance

2. The sizes of widgets and componenets are calculated for specific device sized allowing the app to be responsive for various device sizes.
`lib/utils/size_config.dart`

3. The data fetched from the API is rendered using the FutureBuilder component.

4. Categories section has product cards that have a background that is drawn using the CustomClipper<Path> class
`lib/screens/components/category_card.dart`

~~~~
class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
~~~~

5. AspectRation() widget has been widely used to adjust sizes of cards and card sections

6. Product card Images are wrapped with a Hero() widget with the tag property set to the product id. This allows the product images to slide when navigating to the product details screen.


7. Use of GoRouter for routing migrated from Navigator 1.0

Screenshots

![Simulator Screen Shot - iPhone 13 - 2022-11-18 at 22 33 40](https://user-images.githubusercontent.com/98651593/202780054-8a3906c4-11b8-4ed6-a960-1917362441cb.png)
![Simulator Screen Shot - iPhone 13 - 2022-11-18 at 22 33 50](https://user-images.githubusercontent.com/98651593/202780060-834bc89a-f9c4-44bb-a234-a2e1d49a878e.png)



