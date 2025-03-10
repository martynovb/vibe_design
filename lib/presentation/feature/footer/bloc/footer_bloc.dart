import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vibe_design/data/repo/telegram_repo.dart';

part 'footer_bloc.freezed.dart';

part 'footer_event.dart';

part 'footer_state.dart';

@Singleton()
class FooterBloc extends Bloc<FooterEvent, FooterState> {
  final TelegramRepo telegramRepo;

  FooterBloc({
    required this.telegramRepo,
  }) : super(
          const FooterState(
            status: FormzSubmissionStatus.initial,
          ),
        ) {
    on<_ApplyForCourse>(_onApplyForCourse);
  }

  Future<void> _onApplyForCourse(_ApplyForCourse event, emit) async {
    await telegramRepo.applyForCourse(email: event.email);
    emit(FooterState(status: FormzSubmissionStatus.initial));
  }
}
