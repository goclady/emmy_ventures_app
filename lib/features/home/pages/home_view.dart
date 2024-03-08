import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Omolara",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
            ),
            Text(
              "Do more with your finances \u{1F389}",
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            color: Colors.blue,
              onPressed:(){},
              icon: Icon(Icons.account_circle,
                size: 40,
              )
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16.0)
            ),
            padding: EdgeInsets.all(16.0),
            child: Stack(
              children: [
                ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.add),
                  label: Text("Quick Save"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.orangeAccent),
                ),
                Positioned(
                  top: 0,
                    right: 0,
                    child:  ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("View Savings"),
                        Icon(Icons.arrow_right_alt)
                      ],
                    ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black
                      ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                    left: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("My Savings"),
                      Text("*****",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20
                        ),
                      )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: (){},
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
