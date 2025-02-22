part of '../my_students.dart';

class MyStudentsPage extends StatelessWidget {
  const MyStudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const MyStudentsMobilePage()
            : const MyStudentsDesktopPage();
      },
    );
  }
}
