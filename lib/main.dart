import 'package:flutter/material.dart';
import 'package:plant_mobile_app_flutter_ui/product.dart';
import 'package:plant_mobile_app_flutter_ui/second_screen.dart';

void main() {
  runApp(MyApp());
}

Color color1 = Color(0xFFFD939D);
Color color2 = Color(0xFFFEF4F3);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Plant Flutter App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sideColumn(),
            productsColumn(size, context),
          ],
        ),
        Positioned(
          top: 115,
          left: 28,
          child: Text(
            'Plants',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ),
        Positioned(
            top: 40,
            right: 8,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              iconSize: 35.0,
            ))
      ],
    ));
  }

  Expanded sideColumn() {
    return Expanded(
      child: Container(
        color: color2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 40),
              child: GestureDetector(
                onTap: null,
                child: Image.asset(
                  'images/more icon.png',
                  width: 500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Green',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 170,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: '. ',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: color1),
                    ),
                    TextSpan(
                      text: 'Shape Class',
                      style: TextStyle(color: color1),
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Indore Plants',
                      style: TextStyle(color: Colors.black),
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Green Plants',
                      style: TextStyle(color: Colors.black),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 50),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: color1,
                ),
                width: 60,
                height: 70,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container productsColumn(Size size, BuildContext context) {
    return Container(
      width: size.width * 0.8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Product(
                nameOfImage: 'flower1',
                nameOfProduct: 'House Shape Close',
                price: '45',
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Product(
                nameOfImage: 'flower2',
                nameOfProduct: 'Glass Water',
                price: '30',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
