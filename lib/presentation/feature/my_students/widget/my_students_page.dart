part of '../my_students.dart';

class MyStudentsPage extends StatelessWidget {
  const MyStudentsPage({super.key});

  static final List<StudentModel> students = [
    StudentModel(
      name: 'Nikita Arsionov',
      behanceUrl:
          'https://www.behance.net/gallery/214050879/TAXI4U-Taxi-Application',
      thumbPath: AppImagesUrls.studentWork1,
    ),
    StudentModel(
      name: 'Khrystyna Andrusyshyn',
      behanceUrl: 'https://www.behance.net/gallery/214109763/Delivery-App',
      thumbPath: AppImagesUrls.studentWork2,
    ),
    StudentModel(
      name: 'Anna Ivanova',
      behanceUrl:
          'https://www.behance.net/gallery/214102343/website-case-clothing-store',
      thumbPath: AppImagesUrls.studentWork3,
    ),
    StudentModel(
      name: 'Mariia Sss',
      behanceUrl: 'https://www.behance.net/gallery/214106361/Furniture-App',
      thumbPath: AppImagesUrls.studentWork4,
    ),
    StudentModel(
      name: 'Alina Romancha',
      behanceUrl: 'https://www.behance.net/gallery/216459073/FlexFit-study-cas',
      thumbPath: AppImagesUrls.studentWork5,
    ),
    StudentModel(
      name: 'Melaniia Starchenko',
      behanceUrl: 'https://www.behance.net/gallery/216429489/WrapitUp',
      thumbPath: AppImagesUrls.studentWork6,
    ),
    StudentModel(
      name: 'Angelina Vetrova',
      behanceUrl:
          'https://www.behance.net/gallery/216090451/Travel-program-Roamio',
      thumbPath: AppImagesUrls.studentWork7,
    ),
    StudentModel(
      name: 'Dasha Vedmid',
      behanceUrl: 'https://www.behance.net/gallery/214108445/Soundsy',
      thumbPath: AppImagesUrls.studentWork8,
    ),
    StudentModel(
      name: 'Zlata Pukhovych',
      behanceUrl:
          'https://www.behance.net/gallery/221046249/Creative-Boost-Daily-Design-Challenge-App',
      thumbPath: AppImagesUrls.studentWork9,
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
