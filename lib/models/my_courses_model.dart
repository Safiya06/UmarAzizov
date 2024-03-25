import 'dart:ui';

class MyCoursesModel{
  String nameOfCourse;
  String iconPath;
  Color boxColor;

  MyCoursesModel({required this.nameOfCourse, required this.iconPath, required this.boxColor});
  
  static List<MyCoursesModel> getMyCourses(){
    List<MyCoursesModel> myCourses = [];
    myCourses.add(
      MyCoursesModel(
        nameOfCourse: 'Сутунмухра',
        iconPath: 'assets/backbone.png',
        boxColor: Color(0xFFF3F4F6),
      ),
    );    myCourses.add(
      MyCoursesModel(
        nameOfCourse: 'Анатомия',
        iconPath: 'assets/anatomy.png',
        boxColor: Color(0xFFF3F4F6),
      ),
    );
    return myCourses;
  }
}