import 'package:flutter/material.dart';
import 'package:mceapp/NavBar.dart';
class Uogretmen extends StatefulWidget {
  const Uogretmen({Key? key}) : super(key: key);

  @override
  State<Uogretmen> createState() => _UogretmenState();
}

class _UogretmenState extends State<Uogretmen> {
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

                    Text('U??ur ????retmen\n''??izer & Karakter Tasar??mc??s??',
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

                    Text('13 a??ustos 2000 de Ankarada do??mu??tur. 2012 den g??n??m??ze kadar d??zenli bir ??ekilde insan anatomisi, renk ve ??ekil teorisi ??al????m???? ve bu yeteneklerini sanata yans??tm????t??r. ??izimlerin konusu genelde kurgu ve fantezidir, resimleri kendisi taraf??ndan tasarlanm???? bir karakter i??erir. K??????k ya??ta ??izgi filmlere, ??izgi romanlara ilgi duyup bu konuda nufkunu geli??tirmi??, iyi bir kurgusal karaktere gereken fakt??rleri ????renmi?? ve son zamanlarda bu hobiyi paral?? bir ??ekilde yapan U??ur ????retmen ??u anda Sel??uk ??niversitesinde ??ngilizce M??tercim ve Terc??manl??k b??l??m?? okuyor.',
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
