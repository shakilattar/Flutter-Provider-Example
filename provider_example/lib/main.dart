import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_course.dart';
import 'package:provider_example/my_courses.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ChangeCourse(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF5c67c1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'We are learning ' +
                      Provider.of<ChangeCourse>(context).subject,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            MyCourses(course: 'setState'),
            MyCourses(course: 'GetX'),
            MyCourses(course: 'BLoC'),
          ],
        ),
      ),
    );
  }
}
