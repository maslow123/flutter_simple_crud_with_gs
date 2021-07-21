import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';
import 'package:udemy_course_2/domain/auth/model/login_request.dart';
import 'package:udemy_course_2/domain/auth/model/login_response.dart';
import 'package:udemy_course_2/infrastucture/auth/auth_repository.dart';
import 'package:udemy_course_2/util/constants.dart' as constants;

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  AuthRepository _authRepository = AuthRepository();

  void signInUser(LoginRequest loginRequest) async {
    emit(AuthLoading());

    try{
      print('signInUser');
      final _data = await _authRepository.signInWithEmailAndPassword(loginRequest: loginRequest);
      _data.fold(
        (l) => emit(AuthError(l)), 
        (r) => emit(AuthLoginSuccess(r))
      );


    } catch(e) {
      print('catch e: ${e.toString()}');
      emit(AuthError(e.toString()));
    }
  }

  void saveUserToLocal(LoginResponse data) async {
    emit(AuthLoading());

    try {
      await GetStorage().write(constants.USER_LOCAL_KEY, jsonEncode(data.toJson()));
      emit(AuthSuccess());
    } catch(e) {
      emit(AuthError(e.toString()));
    }
  }

  void loadUserFromLocal() async {
    emit(AuthLoading());

    try {
      final _data = await GetStorage().read(constants.USER_LOCAL_KEY);
      final _result = LoginResponse.fromJson(jsonDecode(_data));
      
      emit(AuthLoginSuccess(_result));
    } catch(e) {
      emit(AuthError(e.toString()));
    }
  }
}
