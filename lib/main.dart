import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'I Am Rich',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepOrange, // Màu nền của AppBar
            foregroundColor: Colors.white, // Màu chữ của AppBar
            titleTextStyle: TextStyle(
              color: Colors.white, // Màu chữ tiêu đề
              fontSize: 20, // Kích thước chữ
              fontWeight: FontWeight.bold, // Làm cho chữ in đậm
            ),
          ),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('I Am Rich'), // Tiêu đề của AppBar
        backgroundColor: const Color.fromARGB(255, 0, 108, 116),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 213, 252, 255),
      body: Center(
        child: Image.asset(
            'assets/images/diamond.png', // Đường dẫn đến hình ảnh trong thư mục assets
            width: 250, // Kích thước rộng của hình ảnh
            height: 250, // Kích thước cao của hình ảnh
          ),
      ),
    );
  }
}