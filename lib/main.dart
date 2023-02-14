import 'package:flutter/material.dart';
import 'package:car_rating/Screens/Car_List.dart';
import 'package:car_rating/Screens/Car_info.dart';
import 'package:provider/provider.dart';
import 'Provider/car_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Products()),
      ],
      child: MaterialApp(
        title: 'Car_Rating',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: User_product_screen(),
        routes: {
          User_product_screen.routee: (ctx) => User_product_screen(),
          Edit_User_Input.routee: (ctx) => Edit_User_Input(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Edit_User_Input(),
    );
  }
}
