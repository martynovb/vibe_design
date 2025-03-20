part of '../my_students.dart';

class MyStudentsDesktopPage extends StatelessWidget {
  const MyStudentsDesktopPage({super.key});
  
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
      itemCount: MyStudentsPage.students.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: Spacing.lg,
        mainAxisSpacing: Spacing.lg,
        childAspectRatio: 1.78,
      ),
      itemBuilder: (context, index) {
        return _cardItem(context, MyStudentsPage.students[index]);
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
