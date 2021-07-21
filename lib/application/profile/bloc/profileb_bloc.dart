import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:udemy_course_2/domain/core/user/model/user_response.dart';
import 'package:udemy_course_2/infrastucture/profile/profile_repository.dart';

part 'profileb_event.dart';
part 'profileb_state.dart';
part 'profileb_bloc.freezed.dart';

class ProfilebBloc extends Bloc<ProfilebEvent, ProfilebState> {
  ProfilebBloc() : super(_Initial());
  ProfileRepository _profileRepository = ProfileRepository();

  @override
  Stream<ProfilebState> mapEventToState(
    ProfilebEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
        started: (value) async* {}, 
        getAllUserData: (value) async* {
          yield ProfilebState.isLoading();
          // get data from API
          final _result = await _profileRepository.getAllUserData();
          // if error yield error state is active          

          // if success yield success state with data
          yield _result.fold(
            (l) => ProfilebState.isError(l),
            (r) => ProfilebState.isSuccess(r)
          );          
        });
  }
}
