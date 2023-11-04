
/*
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;

  List _pages = [
    Center(
      child: SecondHp(),
    ),
    Center(
      child: StatsPage(),
    ),

    Center(
      child: SettingsPage(),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selectedTab,
    onTap: (index) => _changeTab(index),
    selectedItemColor: Colors.blueGrey[400],
    unselectedItemColor: Colors.grey,
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Stats"),

    BottomNavigationBarItem(
    icon: Icon(Icons.settings), label: "Settings"),
    ],
      ),
    );
  }
}
*/