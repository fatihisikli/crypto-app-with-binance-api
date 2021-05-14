import 'package:binanceapi/crypto.dart';
import 'package:binanceapi/cryptoapi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Crypto>> crypto;
  @override
  void initState() {
    super.initState();
    crypto = getCrypto();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ZCrypto API"),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Crypto>>(
            future: crypto,
            builder: (context, data) {
              if (data.hasData) {
                return ListView.builder(
                  itemCount: data.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(data.data[index].symbol),
                            trailing: Text(data.data[index].askPrice),
                          )
                        ],
                      ),
                    );
                  },
                );
              } else if (data.hasError) {
                return Text(data.error);
              }
              return CircularProgressIndicator();
            }));
  }
}
