import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/task.dart';
import './screens/homepage.dart';

void main() => runApp(ToDoListApp());

class ToDoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.red[700],
          fontFamily: 'Lato',
          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  subtitle1: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          ),
        ),
        title: 'GÖREV YÖNETİCİSİ',
        home: Homepage(),
      ),
    );
  }
}
