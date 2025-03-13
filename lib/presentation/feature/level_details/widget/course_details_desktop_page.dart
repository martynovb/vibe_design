part of '../course_details.dart';

class CourseDetailsDesktopPage extends StatelessWidget {
  CourseDetailsDesktopPage({
    super.key,
    required CourseType courseType,
  }) : _courseDetailsModel = courseType.getCourseDetailsByType();

  final CourseDetailsModel _courseDetailsModel;
  final MenuOption _selectedMenuOption = MenuOption.pricing;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: ColorName.card.withValues(alpha: 0.4),
            child: MenuWidget(
              selectedMenuOption: _selectedMenuOption,
              onMenuOptionSelected: (menuOption) {
                if (menuOption == _selectedMenuOption) return;
                context.pop(menuOption);
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                HeaderImage(
                  headerImagePath: _courseDetailsModel.headerImagePath,
                  width: width,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
