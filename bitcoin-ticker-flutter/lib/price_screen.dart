import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'keys.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = currenciesList.first;
  String _apiKey = Keys.coinapiKey; //todo: add key if class Keys doesn't exist
  String _link = 'http://rest.coinapi.io/v1/exchangerate';
  String rateBTC = '?';
  String rateETH = '?';
  String rateLTC = '?';

  Widget getCard(String currency, String rate) {
    return Card(
      color: Colors.lightBlueAccent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
        child: Text(
          '1 $currency = $rate $selectedCurrency',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Column(
              children: [
                getCard(cryptoList[0], rateBTC),
                getCard(cryptoList[1], rateETH),
                getCard(cryptoList[2], rateLTC),
              ],
            ), // todo
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? getIOSPicker() : getAndroidPicker(),
          ),
        ],
      ),
    );
  }

  DropdownButton<String> getAndroidPicker() {
    List<DropdownMenuItem<String>> itemList = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      itemList.add(newItem);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: itemList,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          for (String currency in cryptoList) {
            getCoinData(currency);
          }
        });
      },
    );
  }

  CupertinoPicker getIOSPicker() {
    List<Text> myItems = [];
    for (String currency in currenciesList) {
      myItems.add(Text(currency));
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIntext) {
        print(selectedIntext);
        setState(() {
          selectedCurrency = currenciesList[selectedIntext];
        });
        print(
            'This is the thing i look for: ' + currenciesList[selectedIntext]);
        // selectedCurrency = currenciesList[int.parse(selectedCurrency)];
        //getCoinData(); //todo
        for (String currency in cryptoList) {
          getCoinData(currency);
        }
      },
      children: myItems,
    );
  }

  Future<String> getCoinData(String currency) async {
    dynamic coinData = await CoinData(
            url: '$_link/$currency/$selectedCurrency?apikey=$_apiKey')
        .getData();
    setState(() {
      print(coinData['asset_id_quote']);
      print(coinData['rate']);
      int temp = coinData['rate'].round();
      if (currency == cryptoList[0]) {
        rateBTC = temp.toString();
      } else if (currency == cryptoList[1]) {
        rateETH = temp.toString();
      } else {
        rateLTC = temp.toString();
      }
    });
  }
}
