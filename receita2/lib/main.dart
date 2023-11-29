import 'package:flutter/material.dart';

void main() {
  MyApp app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: NewAppBar(),
        body: NewBody(),
        bottomNavigationBar: NewNavBar(icons: [
          Icon(Icons.coffee_outlined),
          Icon(Icons.local_drink_outlined),
          Icon(Icons.flag_outlined),
        ]),
      )
    );
  }
}

class NewAppBar extends StatelessWidget implements PreferredSizeWidget {
  NewAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Dicas"),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class NewBody extends StatelessWidget {
  NewBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Center(child: Text("La Fin Du Monde - Bock - 65 ibu")),
          ),
          Expanded(
            child: Center(child: Text("Sapporo Premiume - Sour Ale - 54 ibu")),
          ),
          Expanded(
            child: Center(child: Text("Duvel - Pilsner - 82 ibu")),
          )
        ]
      )
    );
  } 
}

class NewNavBar extends StatelessWidget {
  final List<Icon> icons;
  
  NewNavBar({this.icons = const [] });

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: botaoFoiTocado, 
      items: icons.map((e) => BottomNavigationBarItem(
        icon: e,
        label: 'Ícone ${icons.indexOf(e)}',
      )).toList()
    );
  }
}
