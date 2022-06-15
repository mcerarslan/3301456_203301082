import 'package:flutter/material.dart';
import 'package:mceapp/NavBar.dart';
import 'package:url_launcher/url_launcher.dart';

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
                          color:Colors.white,
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