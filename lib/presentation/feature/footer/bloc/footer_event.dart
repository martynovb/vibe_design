part of 'footer_bloc.dart';

@freezed
class FooterEvent with _$FooterEvent {
  const factory FooterEvent.applyForCourse(String email) = _ApplyForCourse;
}
