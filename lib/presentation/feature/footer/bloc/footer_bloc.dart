import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'footer_bloc.freezed.dart';

part 'footer_event.dart';

part 'footer_state.dart';

@Singleton()
class FooterBloc extends Bloc<FooterEvent, FooterState> {
  FooterBloc()
      : super(
          const FooterState(
            status: FormzSubmissionStatus.initial,
          ),
        );
}
