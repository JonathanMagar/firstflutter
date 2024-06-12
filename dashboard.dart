import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DashBoard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          );
        }),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Click Me",
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.people, color: Colors.white),
          ),
        ],
        elevation: 20,
        shadowColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Jonathan Rana Magar"),
                accountEmail: Text("jonathanranamagar@gmail.com"),
                currentAccountPicture: Image.network(
                    "data:image/jpeg;base64,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"),
                otherAccountsPictures: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                ],
              ),
              Card(
                child: ListTile(
                  title: Text("Home page"),
                  subtitle: Text("Go to home page"),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.visibility),
                  onTap: () {
                    print("Home page Menu clicked");
                  },
                ),
              ),
              Card(
                child: ExpansionTile(
                  title: Text("Other page"),
                  subtitle: Text("Go to home page"),
                  leading: Icon(Icons.home),
                  children: [
                    Text("Expanded Data"),
                    Container(
                      height: 1000,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 350,
            // color: Colors.teal,
            decoration: BoxDecoration(
              color: Colors.teal,
              // borderRadius: BorderRadius.all(
              //Radius.elliptical(30, 100),
              //),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(50),
                topLeft: Radius.elliptical(80, 50),
              ),
              border: Border.all(
                color: Colors.yellow,
                width: 5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.6),
                  offset: Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 20,
                ),
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-20, 20),
                  blurRadius: 5,
                  // spreadRadius: 50,
                )
              ],
            ),
            // alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            transform: Matrix4.rotationZ(0.4),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                // borderRadius: BorderRadius.circular(10),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                "Hello all",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
