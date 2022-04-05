

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MceApp(),

  );
}
class MceApp extends StatelessWidget {
  const MceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'mcegraphic',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF5b3e9e),
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
        body: Anasayfa(),
      ),
    );
  }
}
class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         backgroundColor: Color(0xFF5b3e9e),
        body:  SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Color(0xFFa023f1),
                  backgroundImage: AssetImage('assets/images/mce4.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Mcegraphic',
                  style: TextStyle(
                    fontSize:35,
                    color: Color(0xFF1f1536),
                    fontFamily: 'LeckerliOne',
                  ),
                ),
                SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFF1f1536),
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.account_circle,
                        color: Color(0xFFa023f1),

                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        child: Text('Hakkımızda' ,
                        style:TextStyle(
                          color:Color(0xFFa023f1),
                          fontSize:20,
                        ),
                      ),
                       onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Hakkimizda()),
                          );
                       },
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFF1f1536),
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.dashboard,
                        color: Color(0xFFa023f1),

                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(child:  Text('Portfolyo & İşlerimiz' ,
                        style:TextStyle(
                          color:Color(0xFFa023f1),
                          fontSize:20,
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFF1f1536),
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.group,
                        color: Color(0xFFa023f1),

                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        child:Text('Ekibimiz' ,
                        style:TextStyle(
                          color:Color(0xFFa023f1),
                          fontSize:20,
                        ),
                      ),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Ekip()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFF1f1536),
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.call,
                        color: Color(0xFFa023f1),

                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        child: Text('İletişim' ,
                        style:TextStyle(
                          color:Color(0xFFa023f1),
                          fontSize:20,
                        ),
                      ),
                     onPressed: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Iletisim()),
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
        backgroundColor: Color(0xFF5b3e9e),

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

                      style: TextStyle(color: Color(0xFFa023f1), fontSize: 15,),
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
                          color: Color(0xFFa023f1),

                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(child:  Text('Portfolyo & İşlerimiz' ,
                          style:TextStyle(
                            color:Color(0xFFa023f1),
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
class Portfolyo extends StatefulWidget {
  const Portfolyo({Key? key}) : super(key: key);

  @override
  State<Portfolyo> createState() => _PortfolyoState();
}

class _PortfolyoState extends State<Portfolyo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF5b3e9e),

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
            Icon(Icons.color_lens,
              color: Color(0xFFa023f1),

            ),
            SizedBox(
              width: 10,
            ),

            TextButton(child: Text('Kişisel Çizimlerimiz',
              style:TextStyle(
                color:Color(0xFFa023f1),
                fontSize:20,
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
      Divider(
        height: 2,
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
            Icon(Icons.insert_photo,
              color: Color(0xFFa023f1),

            ),
            SizedBox(
              width: 10,
            ),

            TextButton(child: Text('T-shirt Tasarımlarımız',
              style:TextStyle(
                color:Color(0xFFa023f1),
                fontSize:20,
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
      Divider(
        height: 2,
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
            Icon(Icons.collections,
              color: Color(0xFFa023f1),

            ),
            SizedBox(
              width: 10,
            ),

            TextButton(child: Text('Bardak Tasarımlarımız',
              style:TextStyle(
                color:Color(0xFFa023f1),
                fontSize:20,
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
      Divider(
        height: 2,
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
            Icon(Icons.photo_album,
              color: Color(0xFFa023f1),

            ),
            SizedBox(
              width: 10,
            ),

            TextButton(child: Text('Albüm Kapağı Tasarımlarımız',
              style:TextStyle(
                color:Color(0xFFa023f1),
                fontSize:20,
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
    ),
    ),
    );
  }
}

class Ekip extends StatefulWidget {
  const Ekip({Key? key}) : super(key: key);

  @override
  State<Ekip> createState() => _EkipState();
}

class _EkipState extends State<Ekip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5b3e9e),

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

                     TextButton(child: Text('Mehmetcan Erarslan\n''Kurucu/CEO & Grafiker Çizer',
                       style:TextStyle(
                         color:Color(0xFFa023f1),
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
                      color: Color(0xFFa023f1),

                    ),
                    SizedBox(
                      width: 10,
                    ),

                    TextButton(child: Text('Uğur Turan\n''COO & Çizer',
                      style:TextStyle(
                        color:Color(0xFFa023f1),
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
                      color: Color(0xFFa023f1),

                    ),
                    SizedBox(
                      width: 10,
                    ),

                    TextButton(child: Text('Uğur Öğretmen\n''Çizer & Karakter Tasarımcısı',
                      style:TextStyle(
                        color:Color(0xFFa023f1),
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

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launchURL(url);
    } else {
      throw '$url bulunamadı.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5b3e9e),

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
                  'İletişim',
                  style: TextStyle(color: Color(0xFF1f1536), fontSize: 30, fontWeight: FontWeight.bold,),
                ),
              ),
             Column(
                children: [
                  new ListTile(
                    leading: const Icon(Icons.person),
                    title: new TextField(
                      decoration: new InputDecoration(
                        hintText: "Ad & Soyad",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.subject),
                    title: new TextField(
                      decoration: new InputDecoration(
                        hintText: "Konu",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.email),
                    title: new TextField(
                      decoration: new InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.message),
                    title: new TextField(
                      decoration: new InputDecoration(
                        hintText: "Mesaj",
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1.0,
                  ),

                ],
              ),
              Divider(height: 10,),
              Container(
                width:130,
                margin: EdgeInsets.symmetric(horizontal: 50,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFF1f1536),
                  borderRadius: BorderRadiusDirectional.circular(20.0),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      child: Text('Gönder' ,
                        style:TextStyle(
                          color:Color(0xFFa023f1),
                          fontSize:20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Iletisim()),
                        );
                      },
                    ),

                  ],
                ),
              ),
              Divider(height: 5,),
              Container (

                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                child: Text(
                  'Sosyal Medyada Biz!',
                  style: TextStyle(
                    color: Color(0xFF1f1536),
                    fontSize: 25,
                    fontFamily: 'LeckerliOne'
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF1f1536),
                    backgroundImage: AssetImage('assets/images/instagram.png'),
                    child: InkWell(
                      onTap: () {
                        const url = 'https://www.instagram.com/mcegraphic/';
                        launch(url);
                      },
                      child: Ink.image(
                        image: AssetImage('assets/images/instagram.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF1f1536),
                    backgroundImage: AssetImage('assets/images/facebook.png'),
                    child: InkWell(
                      onTap: () {
                        const url = 'https://www.facebook.com/MCEGraphic';
                        launch(url);
                      },
                      child: Ink.image(
                        image: AssetImage('assets/images/facebook.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF1f1536),
                    backgroundImage: AssetImage('assets/images/behance.png'),
                    child: InkWell(
                      onTap: () {
                        const url = 'https://www.behance.net/mcerarslan';
                        launch(url);
                      },
                      child: Ink.image(
                        image: AssetImage('assets/images/behance.png'),
                      ),
                    ),
                  ),

                ],
      ),
      ],
      ),
      ),

          ),
          );
  }
}

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

                    Text('Uğur Öğretmen\n''Çizer & Karakter Tasarımcısı',
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

                    Text('13 ağustos 2000 de Ankarada doğmuştur. 2012 den günümüze kadar düzenli bir şekilde insan anatomisi, renk ve şekil teorisi çalışmış ve bu yeteneklerini sanata yansıtmıştır. Çizimlerin konusu genelde kurgu ve fantezidir, resimleri kendisi tarafından tasarlanmış bir karakter içerir. Küçük yaşta çizgi filmlere, çizgi romanlara ilgi duyup bu konuda nufkunu geliştirmiş, iyi bir kurgusal karaktere gereken faktörleri öğrenmiş ve son zamanlarda bu hobiyi paralı bir şekilde yapan Uğur Öğretmen şu anda Selçuk Üniversitesinde İngilizce Mütercim ve Tercümanlık bölümü okuyor.',
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

class KisiselCizim extends StatefulWidget {
  const KisiselCizim({Key? key}) : super(key: key);

  @override
  State<KisiselCizim> createState() => _KisiselCizimState();
}

class _KisiselCizimState extends State<KisiselCizim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF5b3e9e),

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
      body: Center(
        child: Column(
          children: [
            Container (

              decoration: BoxDecoration(
                color: Color(0xFF1f1536),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Image(image: AssetImage('assets/images/kisisel.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              child: Column(
                children: [

                  Text('Kişisel Çizimlerimize Vectorel Çizim , İllüstrasyon adı altında isimlendiriliyor. İllüstrasyon (Illustration), sanatçının eli yerine doğrudan dijital, yazılım, ve araçları kullanarak bilgisayar ortamı üzerinden veya bilgisayar destekli olarak üretmiş olduğu grafik, çalışmalarıdır. Daha fazla örnek çalışmalarımıza İletişim bölümünden Sosyal medya adreslerimiz ile ulaşabilirsiniz.',
                    style:TextStyle(
                      color:Color(0xFFa023f1),
                      fontSize:15,
                    ),
                  ),
                ],

              ),
            ),
            Container(
              width: 160,
              margin: EdgeInsets.symmetric(horizontal: 50,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.call,
                    color: Color(0xFFa023f1),

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    child: Text('İletişim' ,
                      style:TextStyle(
                        color:Color(0xFFa023f1),
                        fontSize:20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Iletisim()),
                      );
                    },
                  ),

                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}

class Tshirt extends StatefulWidget {
  const Tshirt({Key? key}) : super(key: key);

  @override
  State<Tshirt> createState() => _TshirtState();
}

class _TshirtState extends State<Tshirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5b3e9e),

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
      body: Center(
        child: Column(
          children: [
            Container (

              decoration: BoxDecoration(
                color: Color(0xFF1f1536),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Image(image: AssetImage('assets/images/okaliptus.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              child: Column(
                children: [

                  Text('Okaliptus Streetwear Collection !\nSıradanlıktan hoşlanmayan, estetik kaygısı olan ve sanatsever bir kitleye hitap eder. %100 pamuklu, rahat ve kaliteli kumaştan üretilen tişörtlerimize sahip olmak isterseniz bize ulaşmanız yeterli.',
                    style:TextStyle(
                      color:Color(0xFFa023f1),
                      fontSize:15,
                    ),
                  ),
                ],

              ),
            ),
            Container(
              width: 160,
              margin: EdgeInsets.symmetric(horizontal: 50,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.call,
                    color: Color(0xFFa023f1),

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    child: Text('İletişim' ,
                      style:TextStyle(
                        color:Color(0xFFa023f1),
                        fontSize:20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Iletisim()),
                      );
                    },
                  ),

                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}

class Bardak extends StatefulWidget {
  const Bardak({Key? key}) : super(key: key);

  @override
  State<Bardak> createState() => _BardakState();
}

class _BardakState extends State<Bardak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5b3e9e),

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
      body: Center(
        child: Column(
          children: [
            Container (

              decoration: BoxDecoration(
                color: Color(0xFF1f1536),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Image(image: AssetImage('assets/images/bardak.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              child: Column(
                children: [

                  Text('Kupanızın her iki yüzüne de baskı yapılmaktadır.Baskılı kupa hediyen sevdiklerine özel olsun.Sevgiline,arkadaşına ya da ailene… Hediye edeceğin bu kupa tamamen onlara özel olacak.Kişiye özel seçtiğiniz fotoğraf veya diğer tasarımlar, özel grafik çalışmaları ile dijital ortamda İllüstrasyon tasarımlarına dönüşüyor Karakalem tasarımları ile standart bir fotoğrafa bambaşka bir boyut kazandırıp, sevdiklerinizi özel hissettirin.',
                    style:TextStyle(
                      color:Color(0xFFa023f1),
                      fontSize:15,
                    ),
                  ),
                ],

              ),
            ),
            Container(
              width: 160,
              margin: EdgeInsets.symmetric(horizontal: 50,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.call,
                    color: Color(0xFFa023f1),

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    child: Text('İletişim' ,
                      style:TextStyle(
                        color:Color(0xFFa023f1),
                        fontSize:20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Iletisim()),
                      );
                    },
                  ),

                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}

class Album extends StatefulWidget {
  const Album({Key? key}) : super(key: key);

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5b3e9e),

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
      body: Center(
        child: Column(
          children: [
            Divider(
              height: 50,
            ),
            Container (

              decoration: BoxDecoration(
                color: Color(0xFF1f1536),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Image(image: AssetImage('assets/images/album.jpg'),),
            ),
            Divider(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              child: Column(
                children: [

                  Text( 'Özenle hazırladığımız İllüstrasyon çizimlerimiz ile desteklediğimiz benzersiz tasarımlarımızla müzik dünyasına Albüm Kapaklarımız ile renk katıyoruz. Sende Albüm Kapağı tasarımlarımızdan yararlanmak istiyorsan bizim ile iletişime geç.',
                    style:TextStyle(
                      color:Color(0xFFa023f1),
                      fontSize:15,
                    ),
                  ),
                ],

              ),

            ),
            Divider(
              height: 100,
            ),
            CircleAvatar(
              radius: 40.0,
              backgroundColor: Color(0xFFa023f1),
              backgroundImage: AssetImage('assets/images/mce4.png'),
            ),
          ],
        ),

      ),
    );
  }
}






