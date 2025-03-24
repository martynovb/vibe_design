// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:vibe_design/presentation/feature/app/bloc/app_bloc.dart'
    as _i651;
import 'package:vibe_design/presentation/feature/footer/bloc/footer_bloc.dart'
    as _i143;
import 'package:vibe_design/presentation/feature/home/bloc/home_bloc.dart'
    as _i64;

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
    gh.factory<_i64.HomeBloc>(() => _i64.HomeBloc());
    gh.singleton<_i651.AppBloc>(() => _i651.AppBloc());
    gh.singleton<_i143.FooterBloc>(() => _i143.FooterBloc());
    return this;
  }
}
