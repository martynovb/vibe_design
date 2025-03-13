part of '../course_details.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key, required this.courseType});

  final CourseType courseType;

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const CourseDetailsMobilePage()
            : CourseDetailsDesktopPage(
                courseType: courseType,
              );
      },
    );
  }
}
