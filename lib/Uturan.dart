import 'package:flutter/material.dart';
import 'package:mceapp/NavBar.dart';
class Uturan extends StatefulWidget {
  const Uturan({Key? key}) : super(key: key);

  @override
  State<Uturan> createState() => _UturanState();
}

class _UturanState extends State<Uturan> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

                    Text('Uğur Turan\n''COO & Çizer',
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

                    Text('1 Eylül 2000 de Kırşehirde doğmuştur. 2015 yılında Vectorel çizimlerine ilgi duymuş ve hobi olarak bu çizimler hakkında araştırmalar yapıp kendi imkanlarıyla denemeler yapmıştır. 4-5 ayda belli bir seviyeye gelerek hızlı bir gelişim kaydetmiştir. Bu gelişimi MCE Graphicin kurucusu Mehmetcan Erarslan tarafından göz ardı edilememiş olup onun ekibinin bir parçası olmuştur. Özellikle kıyafet çizimleri konusunda büyük başarılara imza atmış olan Uğur Turan eğitimini Bolu Abant İzzet Baysal Üniversitesinde Hemşirelik Bölümünde sürdürmektedir.',
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