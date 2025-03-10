// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;
import 'package:vibe_design/data/repo/telegram_repo.dart' as _i331;
import 'package:vibe_design/presentation/feature/app/bloc/app_bloc.dart'
    as _i651;
import 'package:vibe_design/presentation/feature/footer/bloc/footer_bloc.dart'
    as _i143;
import 'package:vibe_design/presentation/feature/home/bloc/home_bloc.dart'
    as _i64;
import 'package:vibe_design/presentation/shared/di/modules/data_module.dart'
    as _i156;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i64.HomeBloc>(() => _i64.HomeBloc());
    gh.singleton<_i651.AppBloc>(() => _i651.AppBloc());
    gh.singleton<_i454.SupabaseClient>(() => dataModule.supabase);
    gh.factory<_i331.TelegramRepo>(
        () => _i331.TelegramRepo(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.singleton<_i143.FooterBloc>(
        () => _i143.FooterBloc(telegramRepo: gh<_i331.TelegramRepo>()));
    return this;
  }
}

class _$DataModule extends _i156.DataModule {}
