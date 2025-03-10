import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:vibe_design/presentation/feature/footer/bloc/footer_bloc.dart';
import 'package:vibe_design/presentation/feature/menu/menu_option.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../shared/localization/locale_keys.g.dart';
import '../../shared/styles/app_dimensions.dart';
import '../../shared/widgets/device_layout_builder.dart';
import '../app/bloc/app_bloc.dart';

part 'widget/footer_desktop_page.dart';
part 'widget/footer_mobile_page.dart';
part 'widget/footer_page.dart';