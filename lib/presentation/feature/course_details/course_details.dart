import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vibe_design/presentation/feature/app/bloc/app_bloc.dart';
import 'package:vibe_design/presentation/feature/course_details/model/course_details_model.dart';
import 'package:vibe_design/presentation/feature/course_details/model/course_type.dart';
import 'package:vibe_design/presentation/feature/footer/footer.dart';
import 'package:vibe_design/presentation/shared/navigation/go_router.dart';
import 'package:vibe_design/presentation/shared/navigation/route_constants.dart';
import 'package:vibe_design/presentation/shared/widgets/header_image.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../shared/localization/locale_keys.g.dart';
import '../../shared/styles/app_dimensions.dart';
import '../../shared/widgets/buttons/elevated_button_type_1.dart';
import '../../shared/widgets/device_layout_builder.dart';
import '../apply_for_course/apply_for_course.dart';
import '../choose_your_path/choose_your_path_level.dart';
import '../menu/menu.dart';
import '../menu/menu_option.dart';

part 'widget/course_details_desktop_page.dart';
part 'widget/course_details_mobile_page.dart';
part 'widget/course_details_page.dart';
