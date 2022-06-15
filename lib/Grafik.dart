import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mceapp/NavBar.dart';
import 'package:mceapp/indicator.dart';
class Grafik extends StatefulWidget {
  const Grafik({Key? key}) : super(key: key);

  @override
  State<Grafik> createState() => _GrafikState();
}

class _GrafikState extends State<Grafik> {

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF1f1536),
        title: Text(
            'Satış Grafikleri',
            style: TextStyle(
              color: Color(0xFFa023f1),
            )
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 85,),
        child: AspectRatio(
          aspectRatio: 1.2,
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(1),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          height: 18,
                        ),
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: PieChart(
                              PieChartData(
                                  pieTouchData: PieTouchData(touchCallback:
                                      (FlTouchEvent event, pieTouchResponse) {
                                    setState(() {
                                      if (!event.isInterestedForInteractions ||
                                          pieTouchResponse == null ||
                                          pieTouchResponse.touchedSection == null) {
                                        touchedIndex = -1;
                                        return;
                                      }
                                      touchedIndex = pieTouchResponse
                                          .touchedSection!.touchedSectionIndex;
                                    });
                                  }),
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 40,
                                  sections: showingSections()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5,),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Indicator(
                                color: Color(0xff0293ee),
                                text: 'Kişisel Çizimler',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xfff8b250),
                                text: 'T-shirt Tasarımları',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xff845bef),
                                text: 'Bardak Tasarımları',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xff13d38e),
                                text: 'Albüm Tasarımları',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 28,
                        ),
                      ],
                    ),
                    Satis(),
                  ],
                ),
              ),

            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 60,
            title: '60%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 20,
            title: '20%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 5,
            title: '5%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }

  Widget Satis() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            '''         SATIŞ GRAFİK YORUMU ''',
            style: TextStyle(color: Colors.redAccent, fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '''-SARI RENK:
            SATIŞ ORANLARINDA T-SHİRT SATIŞLARI %20'LİK YER ALMAKTADIR. ''',
            style: TextStyle(color: Colors.orange, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '''-YEŞİL RENK: 
             ALBÜM KAPAK TASARIMLARI %5'LİK YER ALMAKTADIR. ''',
            style: TextStyle(color: Colors.green, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '''-MOR RENK:
            BARDAK TASARIMLARI SATIŞ OLARAK %15 PAY ALARAK BAŞARIYA ULAŞMIŞ OLDU. ''',
            style: TextStyle(color: Colors.deepPurple, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '''-MAVİ RENK:
            EN BAŞARILI SATIŞ ORANINA SAHİP OLAN KİŞİSEL ÇİZİMLER YER ALMAKTAR %60'LIK BAŞARI ALMAKTADIR. EN ÇOK KAZANCI KİŞİSEL ÇİZİMLER SAĞLIYOR. ''',
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
