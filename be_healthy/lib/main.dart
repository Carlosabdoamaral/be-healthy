import 'package:flutter/material.dart';

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // colorScheme: const ColorScheme.dark()
      ),
      home: const MenuPage(title: 'Menu'),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final String _username = "Seu último exercício";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Row (
              children: [
                Text(
                  _username,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )

          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Adicionar exercício',
        child: Icon(
          Icons.add,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
