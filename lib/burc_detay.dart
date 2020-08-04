import 'package:burcrehberi/burc_listesi.dart';
import 'package:flutter/material.dart';

import 'models/burc.dart';

class BurcDetay extends StatelessWidget {
  int index;
  Burc secilenBurc;

  BurcDetay(this.index);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[index];

    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        reverse: false,
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.pink,
            primary: true,
            centerTitle: true,
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAd + " Burcu ve Ozellikleri"),
              background: Image.asset("images/" + secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: false,
              padding: EdgeInsets.all(5),
              child: Text(secilenBurc.burcDetay,style: TextStyle(fontSize: 20,color: Colors.black),),
            ),
          )
        ],
      ),
    );
  }
}
