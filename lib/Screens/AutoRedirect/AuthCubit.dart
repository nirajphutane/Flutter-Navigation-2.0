
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthState { const AuthState(); }

class Login extends AuthState {
  const Login();
}

class Logout extends AuthState {
  Logout(final UniqueKey kay);
}

class AuthCubit extends Cubit<AuthState> {

  late Timer _sessionTimer;

  AuthCubit() : super(const Login()) {
    _startTimer(15);
  }

  void login(final int timeout) async {
    _sessionTimer.cancel();
    _startTimer(timeout);
    emit(const Login());
  }

  void logout() {
    _sessionTimer.cancel();
    emit(Logout(UniqueKey()));
  }

  void _startTimer(final int timeout) {
    _sessionTimer = Timer(Duration(seconds: timeout), () {
      emit(Logout(UniqueKey()));
    });
  }

  @override
  Future<void> close() {
    _sessionTimer.cancel();
    return super.close();
  }
}