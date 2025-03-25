part of '../my_students.dart';

class MyStudentsPage extends StatelessWidget {
  const MyStudentsPage({super.key});

  static final List<StudentModel> students = [
    StudentModel(
      name: 'Nikita Arsionov',
      behanceUrl:
          'https://www.behance.net/gallery/214050879/TAXI4U-Taxi-Application',
      thumbPath: Assets.images.studentWork1.path,
    ),
    StudentModel(
      name: 'Khrystyna Andrusyshyn',
      behanceUrl: 'https://www.behance.net/gallery/214109763/Delivery-App',
      thumbPath: Assets.images.studentWork2.path,
    ),
    StudentModel(
      name: 'Anna Ivanova',
      behanceUrl:
          'https://www.behance.net/gallery/214102343/website-case-clothing-store',
      thumbPath: Assets.images.studentWork3.path,
    ),
    StudentModel(
      name: 'Mariia Sss',
      behanceUrl: 'https://www.behance.net/gallery/214106361/Furniture-App',
      thumbPath: Assets.images.studentWork4.path,
    ),
    StudentModel(
      name: 'Alina Romancha',
      behanceUrl: 'https://www.behance.net/gallery/216459073/FlexFit-study-cas',
      thumbPath: Assets.images.studentWork5.path,
    ),
    StudentModel(
      name: 'Melaniia Starchenko',
      behanceUrl: 'https://www.behance.net/gallery/216429489/WrapitUp',
      thumbPath: Assets.images.studentWork6.path,
    ),
    StudentModel(
      name: 'Angelina Vetrova',
      behanceUrl:
          'https://www.behance.net/gallery/216090451/Travel-program-Roamio',
      thumbPath: Assets.images.studentWork7.path,
    ),
    StudentModel(
      name: 'Dasha Vedmid',
      behanceUrl:
          'https://www.behance.net/gallery/214108445/Soundsy',
      thumbPath: Assets.images.studentWork8.path,
    ),
    StudentModel(
      name: 'Zlata Pukhovych',
      behanceUrl:
          'https://www.behance.net/gallery/221046249/Creative-Boost-Daily-Design-Challenge-App',
      thumbPath: Assets.images.studentWork9.path,
    ),
  ];

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
