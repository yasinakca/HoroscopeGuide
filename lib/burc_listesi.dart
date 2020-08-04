import 'package:burcrehberi/models/burc.dart';
import 'package:burcrehberi/utils/strings.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {

  //diger siniflardan da listenin doldurulmus haline erisebilmek icin static tanimladim
  static List<Burc> tumBurclar = veriKaynaginiHazirla();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tumBurclar.length,
        itemBuilder: (context, index){
          return Card(
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/burcDetay/$index");
                },
                leading: Image.asset("images/" + tumBurclar[index].burcKucukResim,width: 64,height: 64,),
                title: Text(tumBurclar[index].burcAd,style: TextStyle(fontSize: 24,color: Colors.pink),),
                subtitle: Text(tumBurclar[index].burcTarih,style: TextStyle(fontSize: 18),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
              ),
            ),
          );
        }
    );
  }

  static List<Burc> veriKaynaginiHazirla() {
    List<Burc> burclar = [];

    for(int i = 0; i < 12; i++) {
      String kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i+1}.png";
      String buyukResim = Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i+1}.png";

      Burc eklenecekBurc = Burc(Strings.BURC_ADLARI[i], Strings.BURC_TARIHLERI[i], Strings.BURC_GENEL_OZELLIKLERI[i], kucukResim, buyukResim);
      burclar.add(eklenecekBurc);
    }

    return burclar;
  }

}
