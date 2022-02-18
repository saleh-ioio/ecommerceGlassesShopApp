import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Glasses",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: SizedBox(
                height: 65,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryItem(categoryItemName: "Acuv"),
                    CategoryItem(categoryItemName: "Air Optix"),
                    CategoryItem(categoryItemName: "BioMedics"),
                    CategoryItem(categoryItemName: "Dailies"),
                    CategoryItem(categoryItemName: "FreshLook"),
                    CategoryItem(categoryItemName: "Soft"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: SizedBox(
                height: 65,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryItem(categoryItemName: "black"),
                    CategoryItem(categoryItemName: "Red"),
                    CategoryItem(categoryItemName: "White"),
                    CategoryItem(categoryItemName: "blue"),
                    CategoryItem(categoryItemName: "green"),
                    CategoryItem(categoryItemName: "yellow"),
                  ],
                ),
              ),
            ),
            Container(
              height: 330,
              color: Color.fromARGB(255, 166, 166, 166),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Text(
                        "Lenses",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: SizedBox(
                      height: 65,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CategoryItem(categoryItemName: "Acuv"),
                          CategoryItem(categoryItemName: "Air Optix"),
                          CategoryItem(categoryItemName: "BioMedics"),
                          CategoryItem(categoryItemName: "Dailies"),
                          CategoryItem(categoryItemName: "FreshLook"),
                          CategoryItem(categoryItemName: "Soft"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                    child: SizedBox(
                      height: 65,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CategoryItem(categoryItemName: "black"),
                          CategoryItem(categoryItemName: "Red"),
                          CategoryItem(categoryItemName: "White"),
                          CategoryItem(categoryItemName: "blue"),
                          CategoryItem(categoryItemName: "green"),
                          CategoryItem(categoryItemName: "yellow"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String categoryItemName;

  const CategoryItem({
    Key? key,
    required this.categoryItemName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        width: 200,
        height: 65,
        margin: EdgeInsets.symmetric(horizontal: 7),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                categoryItemName,
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
