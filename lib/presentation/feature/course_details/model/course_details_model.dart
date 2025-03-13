import 'package:vibe_design/presentation/feature/course_details/model/about_course_details_model.dart';

class CourseDetailsModel {
  final String headerImagePath;
  final String fullTitle;
  final String title1;
  final String title2;
  final String subTitle;
  final List<String> cardsTitles;
  final String pricePrefix;
  final String price;
  final String pricePostfix;
  final String startDate;
  final String courseFormat;
  final String duration;
  final List<AboutCourseDetailsModel> aboutCourseList;
  final List<AboutCourseDetailsModel> modulesList;
  final List<AboutCourseDetailsModel> benefitsList;

  CourseDetailsModel({
    required this.headerImagePath,
    required this.fullTitle,
    required this.title1,
    required this.title2,
    required this.subTitle,
    required this.cardsTitles,
    required this.price,
    required this.pricePostfix,
    required this.pricePrefix,
    required this.startDate,
    required this.courseFormat,
    required this.duration,
    required this.aboutCourseList,
    required this.modulesList,
    required this.benefitsList,
  });
}
