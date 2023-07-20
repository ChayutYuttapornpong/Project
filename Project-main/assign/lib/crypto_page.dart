import 'package:assign/crypto.dart';
import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  final Crypto item;

  MyBottomSheet({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        margin: const EdgeInsets.all(20),
        child: ListTile(
          leading: Image.network(item.urlImage),
          title: Column(
            children: <Widget>[
              Text(
                item.coinname,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange),
              ),
              const SizedBox(
                height: 5,
              ),
              Text("Price \$" + item.price),
              const SizedBox(
                height: 5,
              ),
              const Text("MARKET CAP \$ 1.07 trillion\n")
            ],
          ),
        ),
      ),
      Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              item.detail,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: const TextButton(
                onPressed: null,
                child: Text(
                  "GO TO WEBSITE",
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                )),
          ),
        ],
      )
    ]));
  }
}
