import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgsSlider = [
    'assets/ad1.jpg',
    'assets/ad2.jpg',
    'assets/ad3.jpg'
  ];
  final List<String> brandimgs = [
    'assets/acuv.png',
    'assets/air_optix.png',
    'assets/biomedics.png',
    'assets/dailies.png',
    'assets/freshlook.png',
    'assets/soft.png',
  ];
  //int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          dealsImageSlider(),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Weekly Featured Products",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                weeklyProduct(
                    imgSrc: "assets/color2.jpg",
                    productName: "Colors Lens",
                    productDesc: "Natural 1-month Core LA Agate",
                    productPirce: "147.50 AED"),
                weeklyProduct(
                    imgSrc: "assets/color1.jpg",
                    productName: "Colors Lens",
                    productDesc: "Natural 1-month Core LA Agate",
                    productPirce: "147.50 AED"),
                weeklyProduct(
                    imgSrc: "assets/color2.jpg",
                    productName: "Colors Lens",
                    productDesc: "Natural 1-month Core LA Agate",
                    productPirce: "147.50 AED")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: SizedBox(
              height: 95,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  NewCollection(newCollectionName: "Color Lenses"),
                  NewCollection(newCollectionName: "Monthly Lenses"),
                  NewCollection(newCollectionName: "Special Offers")
                ],
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Best Selling Products",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                weeklyProduct(
                    imgSrc: "assets/color2.jpg",
                    productName: "Colors Lens",
                    productDesc: "Natural 1-month Core LA Agate",
                    productPirce: "147.50 AED"),
                weeklyProduct(
                    imgSrc: "assets/color1.jpg",
                    productName: "Colors Lens",
                    productDesc: "Natural 1-month Core LA Agate",
                    productPirce: "147.50 AED"),
                weeklyProduct(
                    imgSrc: "assets/color2.jpg",
                    productName: "Colors Lens",
                    productDesc: "Natural 1-month Core LA Agate",
                    productPirce: "147.50 AED")
              ],
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Text(
              "Searching for brand?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            child: brandsImageSlider(),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
          )
        ],
      ),
    );
  }

  Widget brandsImageSlider() {
    return CarouselSlider.builder(
      options:
          CarouselOptions(height: 100, viewportFraction: 0.5, autoPlay: true),
      itemCount: brandimgs.length,
      itemBuilder: (context, index, realIndex) {
        final brandImg = brandimgs[index];

        return buildimgSlider(brandImg, index);
      },
    );
  }

  Widget dealsImageSlider() {
    return CarouselSlider.builder(
      options:
          CarouselOptions(height: 300, viewportFraction: 1, autoPlay: true),
      itemCount: imgsSlider.length,
      itemBuilder: (context, index, realIndex) {
        final slideImg = imgsSlider[index];

        return buildimgSlider(slideImg, index);
      },
    );
  }

  Widget buildimgSlider(String slideImg, int index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Image.asset(
        slideImg,
        fit: BoxFit.cover,
      ),
    );
  }
}

class weeklyProduct extends StatelessWidget {
  final String imgSrc;
  final String productName;
  final String productDesc; // product description
  final String productPirce;

  const weeklyProduct({
    Key? key,
    required this.imgSrc,
    required this.productName,
    required this.productDesc,
    required this.productPirce,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(children: [
              Image.asset(
                imgSrc,
                fit: BoxFit.cover,
                height: 200,
              ),
              Positioned(
                right: 6,
                top: 7,
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ),
              )
            ]),
            Container(
              margin: EdgeInsets.fromLTRB(6, 10, 7, 10),
              child: Column(
                children: [
                  Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      productDesc,
                      style:
                          TextStyle(fontSize: 10.4, color: Colors.amber[700]),
                    ),
                  ),
                  Text(
                    productPirce,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

class NewCollection extends StatelessWidget {
  final String newCollectionName;

  const NewCollection({
    Key? key,
    required this.newCollectionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        width: 200,
        height: 85,
        margin: EdgeInsets.symmetric(horizontal: 7),
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "New Collection",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                newCollectionName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
