import 'package:burcrehberi/burc_detay.dart';
import 'package:burcrehberi/burc_listesi.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => Home(),
        "/burcListe" : (context) => BurcListesi(),
      },
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) {

        List<String> pathElemanlari = settings.name.split("/");
        if(pathElemanlari[1] == "burcDetay") {
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      title: "Burc Rehberi",
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      debugShowCheckedModeBanner: false,
      //home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burc Rehberi"),
      ),
      body: BurcListesi(),
    );
  }
}
