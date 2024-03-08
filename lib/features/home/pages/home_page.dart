import 'package:emmy_ventures_app/features/account/pages/account_view.dart';
import 'package:emmy_ventures_app/features/home/pages/home_view.dart';
import 'package:emmy_ventures_app/features/invest/pages/invest_view.dart';
import 'package:emmy_ventures_app/features/savings/pages/savings_view.dart';
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
      body: listOfPages[selectedIndex],
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
