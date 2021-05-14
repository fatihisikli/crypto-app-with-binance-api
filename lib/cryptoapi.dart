import 'package:binanceapi/crypto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Crypto>> getCrypto() async {
  final response =
      await http.get(Uri.https("binance.com", "api/v3/ticker/bookTicker"));
  if (response.statusCode == 200) {
    return (jsonDecode(response.body) as List).map((sendData) {
      return Crypto.fromJson(sendData);
    }).toList();
  } else {
    throw Exception("Data Error");
  }
}
