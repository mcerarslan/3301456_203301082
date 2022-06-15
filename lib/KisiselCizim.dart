import 'package:flutter/material.dart';
import 'package:mceapp/Iletisim.dart';
import 'package:mceapp/NavBar.dart';
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
