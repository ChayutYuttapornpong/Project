import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/800px-Bitcoin.svg.png",
      "id": 1,
      "name": "BTC",
      "coin": "Bitcoin",
      "detail":
          """Bitcoin (BTC) is a cryptocurrency, a virtual currency designed to act as money and a form of payment outside the control of any one person, group, or entity, thus removing the need for third-party involvement in financial transactions. It is rewarded to blockchain miners for the work done to verify transactions and can be purchased on several exchanges.
Bitcoin was introduced to the public in 2009 by an anonymous developer or group of developers using the name Satoshi Nakamoto.""",
      "price": 'xxx,xx.xxxxx'
    },
    {
      "id": 2,
      "coin": "Binance Coin",
      "name": "BNB",
      "detail":
          '''BNB is a cryptocurrency that can be used to trade and pay fees on the Binance cryptocurrency exchange. BNB is also the cryptocurrency coin that powers the BNB Chain ecosystem. As one of the world's most popular utility tokens, BNB is useful to users in a wide range of applications and use cases.
BNB was launched through an Initial Coin Offering (or ICO) that took place from June 26th to July 3rd, 2017 - 11 days before the Binance Exchange opened for trading. The issue price was 1 ETH for 2,700 BNB or 1 BTC for 20,000 BNB. Although BNB was launched through an ICO, BNB does not provide users with a claim on Binance profits and does not represent an investment in Binance. ''',
      "price": 'xxx,xx.xxxxx',
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/f/fc/Binance-coin-bnb-logo.png",
    },
    {
      "id": 3,
      "coin": "Axie Infinity",
      "name": "AXS",
      "price": 'xxx,xx.xxxxx',
      "detail":
          '''Axie Infinity is an online game on a blockchain partly owned and controlled by its players. It lets players acquire, breed, grow, battle, and trade token-based monsters known as Axies. Axie Infinity Shards (AXS) is the Axie Infinity ecosystem's governance token.
AXS holders may earn prizes by staking their tokens, playing the game, and voting in critical governance decisions. Players can earn AXS when playing various games within the Axie Infinity Universe and through user-generated content initiatives.''',
      "image":
          "https://seeklogo.com/images/A/axie-infinity-axs-logo-57FE26A5DC-seeklogo.com.png",
    },
    {
      "id": 4,
      "coin": 'Internet Computer Coin',
      "name": "ICP",
      "des": "Co-founder & CEO @ ",
      "detail":
          '''The Internet Computer Protocol runs on servers with standardized hardware, which we call nodes. Nodes are distributed globally and hosted in independent data centers to ensure fault tolerance and decentralization. Nodes are grouped together into subnets, where each subnet constitutes its own blockchain that makes progress independently of the other subnets, resulting in unprecedented performance and scalability in the blockchain space. All subnets are connected and orchestrated by the Internet Computer Protocol to give rise to the Internet Computer.
The IC improves and evolves at a rapid pace through regular and seamless roll-outs of software updates that boost performance, iron out bugs, and introduce entirely new capabilities. Continuous hardware upgrades, adding nodes or subnets, make the IC scale virtually without bounds — scaling the IC is always possible by adding additional nodes.''',
      "image":
          "https://s3.coinmarketcap.com/static-gravity/image/2fb1bc84c1494178beef0822179d137d.png",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              // onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage(_foundUsers[index]['image']),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(_foundUsers[index]['name']),
                          subtitle: Text('${_foundUsers[index]["des"]}'),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
