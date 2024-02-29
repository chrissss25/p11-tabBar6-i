import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo Tabbar christian heredia",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiPaginaInicial(),
    );
  }
} //fin AppMiTabBar

//Stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbar christian heredia"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: "celulares", icon: Icon(Icons.face_2)),
            Tab(text: "modelos", icon: Icon(Icons.favorite)),
            Tab(
                text: "cap",
                icon: Icon(
                    Icons.signal_cellular_connected_no_internet_0_bar_sharp)),
            Tab(text: "color", icon: Icon(Icons.cake_sharp))
          ] //fin tabs
              ), //fin bottomTabBar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
              child: Text(
            "apple 1",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          )),
          Center(
            child: Text(
              "apple 2",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "apple 3",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
              child: Text(
            "apple 4",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ))
        ]),
      ), //fin de Scaffold
    ); //DefaultTabController
  } //fin widget
} //_MiPagionaInicial
