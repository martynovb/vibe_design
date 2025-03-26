part of '../my_students.dart';

class MyStudentsMobilePage extends StatelessWidget {
  const MyStudentsMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          child: _title(context),
        ),
        AppSpacing.v_24,
        _cards(context),
      ],
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.myStudentsTitle1.tr(),
        style: TextTheme.of(context).displaySmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w800,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.myStudentsTitle2.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(MyStudentsPage.students.length, (index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? Spacing.md : 0,
              right: Spacing.md,
            ),
            child: _cardItem(context, MyStudentsPage.students[index]),
          );
        }),
      ),
    );
  }

  Widget _cardItem(BuildContext context, StudentModel student) {
    return SizedBox(
      width: 330,
      height: 220,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Stack(
            children: [
              Image.network(student.thumbPath),
              Positioned(
                left: 8,
                bottom: 8,
                child: InkWell(
                  onTap: () => launchUrl(Uri.parse(student.behanceUrl)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorName.background,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Spacing.md,
                        horizontal: Spacing.xs,
                      ),
                      child: Text(
                        student.name,
                        style: TextTheme.of(context).bodySmall?.copyWith(
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
            ],
          ),
        ),
      ),
    );
  }
}
