import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mceapp/models/hava_model.dart';

class HavaApi {
  Future<Weather>? getguncelHavaDurumu(String? location) async{
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=64f7934e92186b687afe1f61b4922521&units=metric");
    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);
   print(Weather.fromJson(body).cityName);
   return Weather.fromJson(body);
  }
}
