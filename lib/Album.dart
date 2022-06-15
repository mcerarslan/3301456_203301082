import 'package:flutter/material.dart';
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