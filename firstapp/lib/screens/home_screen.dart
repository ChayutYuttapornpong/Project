import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

const kTextStyle = TextStyle(
  fontSize: 40,
  color: Colors.grey,
  fontWeight: FontWeight.bold,
);

class _HomeScreenState extends State<HomeScreen> {
  int itemIndex = 0;
  List<Widget> widgetList = [
    const Center(
      child: Text('โฮม', style: kTextStyle),
    ),
    const Center(
      child: Text(
        'กราฟ',
        style: kTextStyle,
      ),
    ),
    const Center(
      child: Text('ตั้งค่า', style: kTextStyle),
    ),
    const Center(
      child: Text('เกี่ยวกับ', style: kTextStyle),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: widgetList.elementAt(itemIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'โฮม',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'กราฟ',
            icon: Icon(Icons.graphic_eq),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'ตั้งค่า'),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'เกี่ยวกับ',
          ),
        ],
        currentIndex: itemIndex,
        onTap: (index) {
          setState(() {
            itemIndex = index;
            print(index);
          });
        },
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
