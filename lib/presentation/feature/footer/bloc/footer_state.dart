part of 'footer_bloc.dart';

@freezed
class FooterState with _$FooterState {
  const factory FooterState({
    required FormzSubmissionStatus status,
  }) = _FooterState;
}
