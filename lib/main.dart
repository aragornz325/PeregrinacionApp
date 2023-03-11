import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mater Peregrinacion de los Pueblos',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Peregrinacion de los Pueblos Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _corazon = Icon(
    Icons.favorite_border,
    color: Colors.white,
  );

  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        actions: [
          IconButton(icon: _corazon, onPressed: _likedChange),
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          DrawerHeader(
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text('enlace 1'),
          Text('enlace 2'),
          Text('enlace 3'),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _likedChange,
        backgroundColor: Colors.red,
        child: _corazon,
        //label: Text('Like'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.home),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.search),
                )
              ]),
        ),
      ),
    );
  }

  void _likedChange() {
    setState(() {
      if (_liked) {
        _corazon = const Icon(
          Icons.favorite_border,
          color: Colors.white,
        );
        _liked = false;
      } else {
        _corazon = const Icon(
          Icons.favorite,
          color: Colors.white,
        );
        _liked = true;
      }
    });
  }
}
