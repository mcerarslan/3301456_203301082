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

                    Text('Mehmetcan Erarslan\n''Kurucu/CEO & Grafiker Çizer',
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

                    Text('16 Mayıs 2000 de Eskişehirde doğmuştur. Selçuk Üniversite Bilgisayar Mühendisliği Bölümünde okumaktadır. MCE Graphicin Kurucusu olan Mehmetcan,'
                        '2013-2014 yılları arasında Vectorel Çizimler dikkatini çektiği için araştırmalarını, çalışmalarını bu yönde yaptıkdan sonra ve bu alanda eğitimini aldı.'
                        'Vectorel çiziminde kısa sürede kendini geliştirdi. 2014 Yılında Facebookta sayfa olarak MCE Graphici Kurdu. Hobi niyetiyle başladığı çizime işler büyüyünce'
                        ' ekibini büyüttü ve şuanda ortağı olan Uğur Turanı ekibine kattı. Sadece Futbol alanında başladığı bu işte birçok alana yöneldiği projelere imza attı.',
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
