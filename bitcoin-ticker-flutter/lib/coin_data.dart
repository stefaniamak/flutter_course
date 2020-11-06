import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

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

  CoinData({@required this.url});
  // CoinData();

  Future getData() async {
    http.Response response = await http.get(url);
    print(response.statusCode);
    // print(jsonDecode(response.body));
    return (jsonDecode(response.body));
  }
}
