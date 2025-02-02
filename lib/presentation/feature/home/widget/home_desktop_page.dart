part of '../home.dart';

class HomeDesktopPage extends StatelessWidget {
  const HomeDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MenuWidget(
            onMenuOptionSelected: onMenuOptionSelected,
          ),
          HeaderPage(),
        ],
      ),
    );
  }

  void onMenuOptionSelected(MenuOption menuOptionSelected) {}
}
