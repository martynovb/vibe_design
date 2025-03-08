part of '../apply_for_course.dart';

class ApplyForCoursePage extends StatelessWidget {
  const ApplyForCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const ApplyForCourseMobilePage()
            : const ApplyForCourseDesktopPage();
      },
    );
  }
}
