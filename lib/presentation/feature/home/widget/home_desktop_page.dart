part of '../home.dart';

class HomeDesktopPage extends StatelessWidget {
  const HomeDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            toolbarHeight: AppDimensions.menuDesktopHeight,
            backgroundColor: ColorName.card.withValues(alpha: 0.4),
            title: MenuWidget(
              onMenuOptionSelected: onMenuOptionSelected,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                HeaderPage(),
                SizedBox(height: 200),
                GoalPage(),
                SizedBox(height: 200),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onMenuOptionSelected(MenuOption menuOptionSelected) {}
}
