import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr5/pages/drinks_page.dart';
import 'pages/profile_page.dart';
import '../data.dart';
import 'pages/favorites_page.dart';
import '../models/drink.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ПР5 ПКС',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  final List<Drink> _drinks = drinks;

  List<Widget> get _pageOptions => <Widget>[
        DrinksPage(
          drinks: _drinks,
          addNewDrink: _addNewDrink,
          toggleFavorite: _toggleFavorite,
          removeDrink: _removeDrink,
        ),
        FavoritesPage(
          drinks: _drinks,
          addNewDrink: _addNewDrink,
          toggleFavorite: _toggleFavorite,
        ),
        const ProfilePage()
      ];

  void _addNewDrink(Drink drink) {
    setState(() {
      _drinks.add(drink);
    });
  }

  void _removeDrink(index) {
    setState(() {
      _drinks.removeAt(index);
    });
  }

  void _toggleFavorite(index) {
    setState(() {
      _drinks[index].isFavorite = !_drinks[index].isFavorite;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions.elementAt(_selectedPage),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.coffee_rounded), label: "Напитки"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: const Color.fromRGBO(181, 139, 80, 1.0),
        unselectedItemColor: const Color.fromRGBO(255, 238, 205, 1.0),
        backgroundColor: const Color.fromRGBO(44, 32, 17, 1.0),
        selectedLabelStyle:
            GoogleFonts.sourceSerif4(textStyle: const TextStyle()),
        unselectedLabelStyle:
            GoogleFonts.sourceSerif4(textStyle: const TextStyle()),
        onTap: _onItemTapped,
      ),
    );
  }
}
