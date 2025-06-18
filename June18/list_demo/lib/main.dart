import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite Foods',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primarySwatch: Colors.green,
      ),
      home: const FovoriteFoodsScreen(),
    );
  }
}

class FovoriteFoodsScreen extends StatelessWidget {
  const FavoriteFoodsScreen({super.key});

  final List<String> foods= const[
    "Pizza",
    "Burger",
    "Salad",
    "Pasta",
    "Sushi",
    "Tacos",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Foods"),
      ),
      body : ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context,index){
          return Card(
              margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
              child:ListTile(
                title: Text(
                  foods[index],
                  style: const TextStyle(fontSize:20),
                ),
              ),
          );
        },
      ),
    );
  }
}

