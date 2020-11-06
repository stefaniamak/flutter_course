import 'package:flutter/foundation.dart';

import 'keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String _apiKey = Keys.coinapiKey; //todo: add key if class Keys doesn't exist

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  String url;

  //CoinData({@required this.url});
  CoinData();

  void getData() async {
    url = 'http://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=$_apiKey';
    http.Response response = await http.get(url);
    print(response.statusCode);
    print(jsonDecode(response.body));
  }
}
