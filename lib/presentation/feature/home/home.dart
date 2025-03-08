import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_design/gen/colors.gen.dart';
import 'package:vibe_design/presentation/feature/choose_your_path/choose_your_path_level.dart';
import 'package:vibe_design/presentation/shared/styles/app_dimensions.dart';

import '../../shared/di/di.dart';
import '../../shared/widgets/device_layout_builder.dart';
import '../about_me/about_me.dart';
import '../goal/goal.dart';
import '../header/header.dart';
import '../learning_details/learning_details.dart';
import '../learning_process/learning_process.dart';
import '../menu/menu.dart';
import '../menu/menu_option.dart';
import '../my_approach/my_approach.dart';
import '../my_students/my_students.dart';
import '../reviews/reviews.dart';
import '../select_level/select_level.dart';
import '../why_me/why_me.dart';
import 'bloc/home_bloc.dart';

part 'widget/home_desktop_page.dart';
part 'widget/home_mobile_page.dart';
part 'widget/home_page.dart';
