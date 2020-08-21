import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String nameOfImage;
  final String price;
  final String nameOfProduct;
  Product({Key key, this.nameOfImage, this.price, this.nameOfProduct})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/$nameOfImage.png',
          width: 300,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          nameOfProduct,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 54),
          child: Text(
            'here you could write anything to describe your product',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
//              SizedBox(
//                height: 10,
//              ),
        Padding(
          padding: const EdgeInsets.only(left: 54, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$$price',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Image.asset('images/basket icon.png'),
                iconSize: 45.0,
              )
            ],
          ),
        )
      ],
    );
  }
}
