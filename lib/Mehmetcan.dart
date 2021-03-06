import 'package:flutter/material.dart';
import 'package:mceapp/NavBar.dart';
class Mehmetcan extends StatefulWidget {
  const Mehmetcan({Key? key}) : super(key: key);

  @override
  State<Mehmetcan> createState() => _MehmetcanState();
}

class _MehmetcanState extends State<Mehmetcan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5b3e9e),
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
                  'Ekibimiz',
                  style: TextStyle(color: Color(0xFF1f1536), fontSize: 30, fontWeight: FontWeight.bold,),
                ),
              ),
              Container (

                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFF1f1536),
                  borderRadius: BorderRadiusDirectional.circular(20.0),
                ),
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),

                child: Row(
                  children: [
                    Icon(Icons.account_circle,
                      color: Color(0xFFa023f1),

                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Text('Mehmetcan Erarslan\n''Kurucu/CEO & Grafiker ??izer',
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color(0xFFa023f1),
                        fontSize:20,
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFF1f1536),
                  borderRadius: BorderRadiusDirectional.circular(20.0),
                ),
                child: Column(
                  children: [

                    Text('16 May??s 2000 de Eski??ehirde do??mu??tur. Sel??uk ??niversite Bilgisayar M??hendisli??i B??l??m??nde okumaktad??r. MCE Graphicin Kurucusu olan Mehmetcan,'
                        '2013-2014 y??llar?? aras??nda Vectorel ??izimler dikkatini ??ekti??i i??in ara??t??rmalar??n??, ??al????malar??n?? bu y??nde yapt??kdan sonra ve bu alanda e??itimini ald??.'
                        'Vectorel ??iziminde k??sa s??rede kendini geli??tirdi. 2014 Y??l??nda Facebookta sayfa olarak MCE Graphici Kurdu. Hobi niyetiyle ba??lad?????? ??izime i??ler b??y??y??nce'
                        ' ekibini b??y??tt?? ve ??uanda orta???? olan U??ur Turan?? ekibine katt??. Sadece Futbol alan??nda ba??lad?????? bu i??te bir??ok alana y??neldi??i projelere imza att??.',
                      style:TextStyle(
                        color:Color(0xFFa023f1),
                        fontSize:15,
                      ),
                    ),
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
