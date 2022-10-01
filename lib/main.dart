import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_state_management/pages/homepage.dart';
import 'package:todo_app_state_management/provider/todos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Todo App';

  const MyApp();

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Color.fromARGB(255, 117, 184, 228),
          ),
          home: HomePage(),
        ),
      );
}
