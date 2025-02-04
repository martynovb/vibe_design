import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_design/gen/colors.gen.dart';
import 'package:vibe_design/presentation/feature/header/header.dart';
import 'package:vibe_design/presentation/shared/styles/app_dimensions.dart';

import '../../shared/di/di.dart';
import '../../shared/widgets/device_layout_builder.dart';
import '../menu/menu.dart';
import '../menu/menu_option.dart';
import 'bloc/home_bloc.dart';

part 'widget/home_desktop_page.dart';
part 'widget/home_mobile_page.dart';
part 'widget/home_page.dart';