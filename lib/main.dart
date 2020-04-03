import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.cake),
        title: Text("Flutter is cool"),
        centerTitle: true,
        titleSpacing: 1.5,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.pie_chart),
            tooltip: "Pie",
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.sd_card),
            tooltip: "SD ",
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text(
                "Hello World",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Please exter text", border: InputBorder.none),
              ),
              Checkbox(
                value: true,
                onChanged: (bool value) {
                  setState(
                    () {
                      print("Clicked");
                    },
                  );
                },
              ),
              Radio<int>(
                value: 0,
                groupValue: 0,
                onChanged: (context) {},
              ),
              Switch(
                value: false,
                onChanged: (bool value) {},
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Raised"),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text("Disable"),
                    onPressed: null,
                  ),
                ],
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatButton(
                    child: Text("Flat"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("Disable"),
                    onPressed: null,
                  ),
                ],
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  OutlineButton(
                    child: Text("Outlined"),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text("Disable"),
                    onPressed: null,
                  ),
                ],
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MaterialButton(
                    splashColor: Colors.red,
                    child: Text("Raised"),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    child: Text("Raised"),
                    onPressed: null,
                  ),
                ],
              ),
              Image.network(
                'http://thecatapi.com/api/images/get?formet=src&type=gif',
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            title: Text("Bank"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text("Apps"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text("Shop"),
          ),
        ],
      ),
    );
  }
}
