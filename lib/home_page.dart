import 'package:emmy_ventures_app/account_view.dart';
import 'package:emmy_ventures_app/home_view.dart';
import 'package:emmy_ventures_app/invest_view.dart';
import 'package:emmy_ventures_app/savings_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView(),
  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emmy Ventures"),
      ),
      body: listOfPages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
          onPressed: (){},
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.tealAccent,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: (value){
          setState(() {
            selectedIndex = value;
          });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.savings),
            label: "Savings"),
            BottomNavigationBarItem(icon: Icon(Icons.rocket_launch),
            label: "Invest"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),
            label: "Account"),
          ],
      ),
    );
  }
}
