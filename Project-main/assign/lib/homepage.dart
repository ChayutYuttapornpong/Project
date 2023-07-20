import 'package:assign/crypto.dart';
import 'package:assign/crypto_Page.dart';
import 'package:assign/searchpage.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final TextEditingController controller = TextEditingController();
  List<Crypto> crypto = List.from(allcrypto);
  bool isVisible = false;
  bool showTextField = false;
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 60,
            child: TextField(
              onChanged: null,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const searchpage()));
              },
              controller: controller,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
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
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(20.20, 0, 0, 0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '3',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'rank crypto',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.center,
              width: 100.0,
              height: 150.0,
              child: Card(
                margin: EdgeInsets.zero,
                color: Colors.grey.shade100,
                child: ListView.builder(
                  itemCount: crypto == false
                      ? 0
                      : (crypto.length > 1 ? 1 : crypto.length),
                  itemBuilder: (context, index) {
                    final Crypto = crypto[0];
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 10.0,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(Crypto.urlImage, scale: 1.0),
                            radius: 30.0,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            Crypto.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            Crypto.coin,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 150.0,
              margin: const EdgeInsets.all(10.0),
              child: Card(
                margin: EdgeInsets.zero,
                color: Colors.grey.shade100,
                child: ListView.builder(
                  itemCount: crypto == false
                      ? 0
                      : (crypto.length > 1 ? 1 : crypto.length),
                  itemBuilder: (context, index) {
                    final Crypto = crypto[1];
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(Crypto.urlImage, scale: 1.0),
                            radius: 30.0,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            Crypto.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            Crypto.coin,
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 150.0,
              child: Card(
                margin: EdgeInsets.zero,
                color: Colors.grey.shade100,
                child: ListView.builder(
                  itemCount: crypto == false
                      ? 0
                      : (crypto.length > 1 ? 1 : crypto.length),
                  itemBuilder: (context, index) {
                    final Crypto = crypto[2];
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(Crypto.urlImage),
                            radius: 30.0,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            Crypto.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 05,
                          ),
                          Text(
                            Crypto.coin,
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20.20, 0, 0, 0),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Buy, sell and hold crypto',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ListView.builder(
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
                trailing: Text(Cryptos.price + '\n' + "xxx.xxx"),
                onTap: () {
                  Crypto tappedItem = crypto[index];
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      )),
                      context: context,
                      builder: (context) {
                        return MyBottomSheet(item: tappedItem);
                      });
                },
              );
            }),
        Card(
          color: Colors.cyanAccent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
            leading: Image.network(
                "https://image.similarpng.com/very-thumbnail/2021/09/Gift-logo-design-template-on-transparent-background-PNG.png"),
            title: const Text(
                "You Can earn \$10 when you invite a friend to but crypto"),
            subtitle: const Text("Invite your frined",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ]))));
}
