part of '../my_students.dart';

class MyStudentsDesktopPage extends StatelessWidget {
  const MyStudentsDesktopPage({super.key});

  static final List<StudentModel> _students = [
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
          'https://www.behance.net/gallery/216090451/Travel-program-Roamio',
      thumbPath: Assets.images.studentWork8.path,
    ),
    StudentModel(
      name: 'Zlata Pukhovych',
      behanceUrl:
          'https://www.behance.net/gallery/212187509/Soft-skills-courses',
      thumbPath: Assets.images.studentWork9.path,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDimensions.minDesktopWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(context),
            AppSpacing.v_64,
            _cards(context),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.myStudentsTitle1.tr(),
        style: TextTheme.of(context).displayMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w800,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.myStudentsTitle2.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: _students.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: Spacing.lg,
        mainAxisSpacing: Spacing.lg,
        childAspectRatio: 1.78,
      ),
      itemBuilder: (context, index) {
        return _cardItem(context, _students[index]);
      },
    );
  }

  Widget _cardItem(BuildContext context, StudentModel student) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Image.asset(student.thumbPath),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(Spacing.sm),
                child: InkWell(
                  onTap: () => launchUrl(Uri.parse(student.behanceUrl)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorName.background,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Spacing.sm,
                        horizontal: Spacing.md,
                      ),
                      child: Text(
                        student.name,
                        style: TextTheme.of(context).labelMedium?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
