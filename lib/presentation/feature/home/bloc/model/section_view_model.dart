import 'package:flutter/material.dart';
import 'package:vibe_design/presentation/feature/menu/menu_option.dart';

class SectionViewModel {
  final GlobalKey? key;
  final MenuOption menuOption;
  final Widget section;

  SectionViewModel({
    this.key,
    this.menuOption = MenuOption.none,
    required this.section,
  });
}
