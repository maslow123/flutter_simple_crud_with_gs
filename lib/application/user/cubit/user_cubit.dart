import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:udemy_course_2/domain/core/user/model/user_req_res.dart';
import 'package:udemy_course_2/domain/core/user/user_data.dart';
import 'package:udemy_course_2/infrastucture/user/user_repository.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState.initial());
  UserRepository _userRepository = UserRepository();

  void createNewUser(RequestData requestData) async {
    emit(UserState.loading());

    try {
      print('signInUser');
      final _data = await _userRepository.createNewUser(requestData);
      _data.fold(
        (l) => emit(UserState.error(l)),
        (r) => emit(UserState.success(r)),
      );
    } catch (e) {
      print('catch e: ${e.toString()}');
      emit(UserState.error(e.toString()));
    }
  }
}
