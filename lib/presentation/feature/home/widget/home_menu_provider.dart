part of '../home.dart';

class HomeMenuProvider extends InheritedWidget {
  final Future<void> Function(MenuOption) onMenuOptionSelected;
  const HomeMenuProvider({
    super.key,
    required this.onMenuOptionSelected,
    required super.child,
  });

  static HomeMenuProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<HomeMenuProvider>();

  @override
  bool updateShouldNotify(covariant HomeMenuProvider oldWidget) =>
      onMenuOptionSelected != oldWidget.onMenuOptionSelected;
}
