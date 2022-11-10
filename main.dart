import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Architecture(),
  ));
}

class Architecture extends StatefulWidget {
  const Architecture({Key? key}) : super(key: key);

  @override
  State<Architecture> createState() => _ArchitectureState();
}

class _ArchitectureState extends State<Architecture> {
  @override
  Widget build(BuildContext context) {
    final boyut = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: boyut.width < 600
          ? Drawer(
              child: Menu(),
            )
          : null,
      body: Row(
        children: [
          boyut.width > 600 ? Flexible(flex: 1, child: Menu()) : Container(),
          Flexible(
            flex: 3,
            child: Center(
              child: FittedBox(
                child: Text(
                  'Çizim Yapabileceğiniz Alan Boyutu: ${boyut.width.floor()}*${boyut.height.floor() - 150}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 150.0,
          color: Colors.green,
          child: Center(child: Text("Çizim")),
        ),
        ListTile(
          title: Text("Ana Sayfa"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Profil"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Araçlar"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Kaydet"),
          onTap: () {},
        ),
      ],
    );
  }
}
