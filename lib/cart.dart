import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CartProduct(
            productImageSrc: "assets/color2.jpg",
            productName: "red Lenses",
            productBrand: "Air Optix",
            productPrice: "30 AED"),
        CartProduct(
            productImageSrc: "assets/color2.jpg",
            productName: "red Lenses",
            productBrand: "Air Optix",
            productPrice: "30 AED"),
        CartProduct(
            productImageSrc: "assets/color2.jpg",
            productName: "red Lenses",
            productBrand: "Air Optix",
            productPrice: "30 AED"),
      ],
    );
  }
}

class CartProduct extends StatefulWidget {
  final String productImageSrc;
  final String productName;
  final String productBrand;
  final String productPrice;

  const CartProduct({
    Key? key,
    required this.productImageSrc,
    required this.productName,
    required this.productBrand,
    required this.productPrice,
  }) : super(key: key);

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Image.asset(
                widget.productImageSrc,
                fit: BoxFit.cover,
                width: 200,
              )),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productName,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      widget.productBrand,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),
                  Text(
                    widget.productPrice,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(children: [
              Icon(Icons.close),
              Container(
                width: 35,
                height: 35,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      isCollapsed: true,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(5)),
                  initialValue: "0",
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
