import 'package:flutter/material.dart';
import 'package:mceapp/Grafik.dart';
import 'package:mceapp/KisiselCizim.dart';
import 'package:mceapp/NavBar.dart';
import 'package:mceapp/Tshirt.dart';
import 'package:mceapp/Bardak.dart';
import 'package:mceapp/Album.dart';

class Portfolyo extends StatefulWidget {
  const Portfolyo({Key? key}) : super(key: key);

  @override
  State<Portfolyo> createState() => _PortfolyoState();
}

class _PortfolyoState extends State<Portfolyo> {
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
          ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                  'Portfolyo & İşlerimiz',
                  style: TextStyle(color: Color(0xFF1f1536), fontSize: 30, fontWeight: FontWeight.bold,),
                ),
              ),
              Row(
                children: [
                  Container (

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xFF1f1536),
                      borderRadius: BorderRadiusDirectional.circular(20.0),
                    ),
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(15),

                    child: Row(
                      children: [
                        Icon(Icons.color_lens,
                          color: Colors.white,

                        ),
                        SizedBox(
                          width: 3,
                        ),

                        TextButton(child: Text('Kişisel Çizimler',
                          style:TextStyle(
                            color:Colors.white,
                            fontSize:15,
                          ),
                        ),
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => KisiselCizim()),
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
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(15),

                    child: Row(
                      children: [
                        Icon(Icons.insert_photo,
                          color: Colors.white,

                        ),
                        SizedBox(
                          width: 3,
                        ),

                        TextButton(child: Text('T-shirt Tasarımları',
                          style:TextStyle(
                            color:Colors.white,
                            fontSize:15,
                          ),
                        ),
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Tshirt()),
                            );
                          },
                        ),

                      ],
                    ),

                  ),
                ],
              ),
              Row(
                children: [
                  Container (

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xFF1f1536),
                      borderRadius: BorderRadiusDirectional.circular(20.0),
                    ),
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(15),

                    child: Row(
                      children: [
                        Icon(Icons.collections,
                          color: Colors.white,

                        ),
                        SizedBox(
                          width: 3,
                        ),

                        TextButton(child: Text('Bardak Tasarımları',
                          style:TextStyle(
                            color:Colors.white,
                            fontSize:14,
                          ),
                        ),
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Bardak()),
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
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.fromLTRB(3, 10, 10, 10),

                    child: Row(
                      children: [
                        Icon(Icons.photo_album,
                          color: Colors.white,

                        ),
                        SizedBox(
                          width: 3,
                        ),

                        TextButton(child: Text('Albüm Tasarımları',
                          style:TextStyle(
                            color:Colors.white,
                            fontSize:14,
                          ),
                        ),
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Album()),
                            );
                          },
                        ),

                      ],
                    ),

                  ),
                ],
              ),
              Container (

                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFF1f1536),
                  borderRadius: BorderRadiusDirectional.circular(20.0),
                ),
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.fromLTRB(80,10, 80, 10),

                child: Row(
                  children: [
                    Icon(Icons.equalizer,
                      color: Colors.white,

                    ),
                    SizedBox(
                      width: 3,
                    ),

                    TextButton(child: Text('Satış Grafikleri',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20,
                      ),
                    ),
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Grafik()),
                        );
                      },
                    ),

                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}