import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waleed_optics_app/account.dart';
import 'package:waleed_optics_app/cart.dart';
import 'package:waleed_optics_app/category.dart';
import 'package:waleed_optics_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'glasses lenses',
      theme: ThemeData(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Color.fromARGB(255, 207, 197, 126)),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.black26))),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: Colors.white,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.black,
              unselectedItemColor: Colors.white70)),
      home: const MyHomePage(title: 'glasses and lenses shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool cartActionButton = false;

  List<Widget> _widgetTabs = <Widget>[
    HomeScreen(),
    CategoryTab(),
    CartPage(),
    AccountPage()
  ];

  void _oniconTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2) {
        cartActionButton = true;
      } else
        cartActionButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),
      appBar: AppBar(
        elevation: 0,
        title:
            Container(alignment: Alignment.center, child: Text(widget.title)),
      ),
      floatingActionButton: cartActionButton // check if cart tab selected
          ? Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 80),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 197, 126),
                  borderRadius: BorderRadiusDirectional.circular(4)),
              child: Text(
                "Proceed To Checkout",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(child: _widgetTabs.elementAt(_selectedIndex)),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Category",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _oniconTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
