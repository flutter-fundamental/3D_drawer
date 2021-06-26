import 'package:flutter/material.dart';
import 'package:tridimensional_drawer/tridimensional_drawer.dart';
import 'package:tridimensional_drawer/tridimensional_drawer_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final TridimensionalDrawerController controller =
      TridimensionalDrawerController();

  @override
  Widget build(BuildContext context) {
    return TridimensionalDrawer(
      controller: controller,
      mainPage: GestureDetector(
        onTap: () => controller.open(),
        child: MainPage(),
      ),
      drawer: CustomDrawer(),
      backgroundPage: GestureDetector(
        onTap: () => controller.close(),
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Text(
            'Main Page',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey,
            Colors.blueGrey,
          ],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 150.0, top: 30),
          child: Column(
            children: [
              Image.asset(
                'assets/man.png',
                height: 150,
                width: 150,
              ),
              Text(
                'Username',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Notification',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text(
                  'Inbox',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.inbox,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text(
                  'Starred',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.star_border,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
