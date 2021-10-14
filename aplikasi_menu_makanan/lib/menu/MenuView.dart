import 'package:flutter/material.dart';
import 'MenuPage.dart';

class MenuView extends StatefulWidget {
  @override
  _MenuView createState() => _MenuView();
}

class _MenuView extends State<MenuView> {
  List<String> names = [
    'Sate',
    'Gimbap',
    'Mie-ayam',
    'Nasi-Padang',
    'Pizza',
    'Ramen',
    'Nasi-Campur',
    'Soto-Medan',
    'Ayam-geprek',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Makanan'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(names.length, (index) {
          return GridTile(
            child: GestureDetector(
              child: Container(
                width: 55.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  alignment: FractionalOffset(0.2, 0.6),
                  image: AssetImage('images/' + names[index] + '.jpg'),
                )),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return MenuPage(value: names[index]); // kirim data
                }));
              },
            ),
          );
        }),
      ),
    );
  }
}
