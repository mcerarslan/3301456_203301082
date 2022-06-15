import 'package:flutter/material.dart';
import 'package:mceapp/NavBar.dart';
import 'package:mceapp/Portfolyo.dart';

class Hakkimizda extends StatefulWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  State<Hakkimizda> createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Color(0xFF1f1536),
          title: Text(
              'mcegraphic',
              style: TextStyle (
                color: Color(0xFFa023f1),
              )
          ),
          centerTitle: true,
        ),

        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container (
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all( color: Color(0xFF1f1536),width: 1,),
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),

                  alignment: Alignment.center,
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Hakkımızda',
                    style: TextStyle(color: Color(0xFF1f1536), fontSize: 40, fontWeight: FontWeight.bold,),
                  ),
                ),
                Container (

                  decoration: BoxDecoration(
                    color: Color(0xFF1f1536),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  child: Text(
                    '  Tasarım tutkusu ile yola çıktığımız ve markalaşmaya inandığımız 8 yılı başarı ile geride bıraktık. '
                        'İllüstrasyonlarımızla birçok alanda çalışarak, müşterilermizin beğenilerini kısa sürede yakalamanın mutluluğunu yaşıyoruz. Çizim Alanındaki yeteneğimize güvenerek,sorunsuz bir iş akışı sağlamak için çaba gösteriyoruz.Bizim ile aynı vizyonu paylaşmak isteyen müşterilerimizi bekliyoruz. Çizgimize, bu yolda bizi her zaman destekleyen müşterilerimize ve takipçilerimize teşekkürü borç biliyoruz.',

                    style: TextStyle(color: Colors.white, fontSize: 15,),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('      Çalışmalarımız;',
                    style: TextStyle(color: Color(0xFF1f1536), fontSize: 20,fontWeight: FontWeight.bold,),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(

                    shape: BoxShape.rectangle,
                    color: Color(0xFF1f1536),
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.dashboard,
                        color: Colors.white

                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(child:  Text('Portfolyo & İşlerimiz' ,
                        style:TextStyle(
                          color:Colors.white,
                          fontSize:15,
                        ),
                      ),
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Portfolyo()),
                          );
                        },
                      )


                    ],
                  ),
                ),
                Divider(
                  height:30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70,
                  ),
                  padding: EdgeInsets.all(0.7),
                  color: Color(0xFF1f1536),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Divider(
                  height:20,
                ),
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Color(0xFFa023f1),
                  backgroundImage: AssetImage('assets/images/mce4.png'),
                ),

              ],
            ),

          ),
        ),

      );

  }
}