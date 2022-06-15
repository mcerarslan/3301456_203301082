import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mceapp/NavBar.dart';
import 'package:mceapp/ek_bilgi.dart';
import 'package:mceapp/guncel_havadurumu.dart';
import 'package:mceapp/models/hava_model.dart';
import 'package:mceapp/services/hava_api.dart';
class HavaDurumu extends StatefulWidget {
  const HavaDurumu({Key? key}) : super(key: key);

  @override
  State<HavaDurumu> createState() => _HavaDurumuState();
}

class _HavaDurumuState extends State<HavaDurumu> {
  HavaApi client = HavaApi();
  Weather? data;

  Future<void> getData() async{
     data = await client.getguncelHavaDurumu("Konya");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.blue,
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
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                guncelHavaDurumu(Icons.wb_sunny, "${data!.temp}°", "${data!.cityName}"),
                SizedBox(
                  height: 60,
                ),
                Text("Hava Durumu Bilgi",style: TextStyle(fontSize: 24,color: Color(
                    0xddffffff),
                  fontWeight: FontWeight.bold,
                ),
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                ekBilgi("${data!.wind}","${data!.humidity}","${data!.pressure}", "${data!.feels_like}"),

              ],
            );
          }else if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        }

      ),
    );
  }
}
