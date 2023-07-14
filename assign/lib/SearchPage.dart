import 'package:flutter/material.dart';

import 'crypto.dart';
import 'crypto_Page.dart';

class searchpage extends StatefulWidget {
  const searchpage({super.key});
  @override
  _searchpageState createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  var _controller = TextEditingController();
  List<Crypto> crypto = List.from(allcrypto);

  void searchcrypto(String query) {
    if (query.isEmpty) {
    } else {
      final suggestions = allcrypto.where((Crypto) {
        final cryptoTitle = Crypto.coin.toLowerCase();
        final input = query.toLowerCase();
        return cryptoTitle.contains(input);
      }).toList();

      setState(() => crypto = suggestions);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 60,
            child: TextField(
              onChanged: (query) => searchcrypto(query),
              controller: _controller,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: _controller.clear,
                  icon: const Icon(Icons.clear),
                ),
                contentPadding: const EdgeInsets.all(20.0),
                hintText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
        crypto.isNotEmpty
            ? ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: crypto.length,
                itemBuilder: (context, index) {
                  final Cryptos = crypto[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        Cryptos.urlImage,
                      ),
                      backgroundColor: Colors.transparent,
                      radius: 40.0,
                    ),
                    title: Text(
                      Cryptos.coin,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      Cryptos.name,
                    ),
                    trailing: Text(Cryptos.price),
                    onTap: () {
                      Crypto tappedItem = crypto[index];
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          )),
                          context: context,
                          builder: (context) {
                            return MyBottomSheet(item: tappedItem);
                          });
                    },
                  );
                },
              )
            : const Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 320)),
                  Text(
                    'Sorry\n No result match this keywords',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),
                  )
                ],
              )
      ]))));
}
