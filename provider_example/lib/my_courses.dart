import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_course.dart';

class MyCourses extends StatelessWidget {
  final String course;
  const MyCourses({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ChangeCourse>(context, listen: false)
            .changeSubjects(course);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFF5c67c1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            course,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
