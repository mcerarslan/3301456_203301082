import 'package:flutter/material.dart';
import 'package:mceapp/Mehmetcan.dart';
import 'package:mceapp/NavBar.dart';
import 'package:mceapp/Uturan.dart';
import 'package:mceapp/Uogretmen.dart';

class Ekip extends StatefulWidget {
  const Ekip({Key? key}) : super(key: key);

  @override
  State<Ekip> createState() => _EkipState();
}

class _EkipState extends State<Ekip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      color: Colors.white,

                    ),
                    SizedBox(
                      width: 10,
                    ),

                    TextButton(child: Text('Mehmetcan Erarslan\n''Kurucu/CEO & Grafiker Çizer',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20,
                      ),
                    ),
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mehmetcan()),
                        );
                      },
                    ),

                  ],
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
                      color: Colors.white,

                    ),
                    SizedBox(
                      width: 10,
                    ),

                    TextButton(child: Text('Uğur Turan\n''COO & Çizer',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20,
                      ),
                    ),
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Uturan()),
                        );
                      },
                    ),

                  ],
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
                      color: Colors.white,

                    ),
                    SizedBox(
                      width: 10,
                    ),

                    TextButton(child: Text('Uğur Öğretmen\n''Çizer & Karakter Tasarımcısı',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20,
                      ),
                    ),
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Uogretmen()),
                        );
                      },
                    ),

                  ],
                ),

              ),
              Divider(
                height:50,
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
                height:30,
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
