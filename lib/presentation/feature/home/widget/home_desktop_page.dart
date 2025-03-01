part of '../home.dart';

class HomeDesktopPage extends StatelessWidget {
  const HomeDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            toolbarHeight: AppDimensions.menuDesktopHeight,
            backgroundColor: ColorName.card.withValues(alpha: 0.4),
            title: MenuWidget(
              onMenuOptionSelected: (option) => onMenuOptionSelected(
                option,
                context,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                HeaderPage(),
                SizedBox(height: 200),
                GoalPage(),
                SizedBox(height: 200),
                AboutMePage(),
                SizedBox(height: 200),
                MyApproachPage(),
                SizedBox(height: 200),
                SelectLevelPage(),
                SizedBox(height: 200),
                WhyMePage(),
                SizedBox(height: 200),
                MyStudentsPage(),
                SizedBox(height: 200),
                ReviewsPage(),
                SizedBox(height: 200),
                LearningProcessPage(),
                SizedBox(height: 200),
                LearningDetailsPage(),
                SizedBox(height: 200),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onMenuOptionSelected(
    MenuOption menuOptionSelected,
    BuildContext context,
  ) {}
}
