class Crypto {
  final String coin;
  final String urlImage;
  final String name;
  final String detail;
  final String price;
  final String coinname;

  const Crypto(
      {required this.coin,
      required this.urlImage,
      required this.name,
      required this.detail,
      required this.price,
      required this.coinname});
}

const allcrypto = [
  Crypto(
      coin: 'Bitcoin',
      urlImage:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/800px-Bitcoin.svg.png',
      name: 'BTC',
      detail:
          """Bitcoin (BTC) is a cryptocurrency, a virtual currency designed to act as money and a form of payment outside the control of any one person, group, or entity, thus removing the need for third-party involvement in financial transactions. It is rewarded to blockchain miners for the work done to verify transactions and can be purchased on several exchanges.
Bitcoin was introduced to the public in 2009 by an anonymous developer or group of developers using the name Satoshi Nakamoto.""",
      price: 'xxx,xx.xxxxx',
      coinname: 'Bitcoin(BTC)'),
  Crypto(
      coin: 'Binance Coin',
      urlImage:
          'https://upload.wikimedia.org/wikipedia/commons/f/fc/Binance-coin-bnb-logo.png',
      name: 'BNB',
      detail:
          '''BNB is a cryptocurrency that can be used to trade and pay fees on the Binance cryptocurrency exchange. BNB is also the cryptocurrency coin that powers the BNB Chain ecosystem. As one of the world's most popular utility tokens, BNB is useful to users in a wide range of applications and use cases.
BNB was launched through an Initial Coin Offering (or ICO) that took place from June 26th to July 3rd, 2017 - 11 days before the Binance Exchange opened for trading. The issue price was 1 ETH for 2,700 BNB or 1 BTC for 20,000 BNB. Although BNB was launched through an ICO, BNB does not provide users with a claim on Binance profits and does not represent an investment in Binance. ''',
      price: 'xxx,xx.xxxxx',
      coinname: 'Binance Coin(BNB)'),
  Crypto(
      coin: 'Axie Infinity',
      urlImage:
          'https://seeklogo.com/images/A/axie-infinity-axs-logo-57FE26A5DC-seeklogo.com.png',
      name: 'AXS',
      price: 'xxx,xx.xxxxx',
      detail:
          '''Axie Infinity is an online game on a blockchain partly owned and controlled by its players. It lets players acquire, breed, grow, battle, and trade token-based monsters known as Axies. Axie Infinity Shards (AXS) is the Axie Infinity ecosystem's governance token.

AXS holders may earn prizes by staking their tokens, playing the game, and voting in critical governance decisions. Players can earn AXS when playing various games within the Axie Infinity Universe and through user-generated content initiatives.''',
      coinname: 'Axie Infinity(AXS)'),
  Crypto(
      coin: 'Internet Computer Coin',
      urlImage:
          'https://s3.coinmarketcap.com/static-gravity/image/2fb1bc84c1494178beef0822179d137d.png',
      name: 'ICP',
      price: 'xxx,xx.xxxxx',
      detail:
          '''The Internet Computer Protocol runs on servers with standardized hardware, which we call nodes. Nodes are distributed globally and hosted in independent data centers to ensure fault tolerance and decentralization. Nodes are grouped together into subnets, where each subnet constitutes its own blockchain that makes progress independently of the other subnets, resulting in unprecedented performance and scalability in the blockchain space. All subnets are connected and orchestrated by the Internet Computer Protocol to give rise to the Internet Computer.
''',
      coinname: ('Internet Computor Coin(ICP)')),
];
