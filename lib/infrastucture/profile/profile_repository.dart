
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:udemy_course_2/domain/core/user/model/user_response.dart';

class ProfileRepository {
  Dio _dio = Dio();

  Future<Either<String, UserResponse>>getAllUserData() async {
    print('signInWithEmailAndPassword');
    Response _response;
    try {
      print('try');
      _response = await _dio.get('https://reqres.in/api/users?page=2');

      UserResponse _userResp = UserResponse.fromJson(_response.data);
      return right(_userResp);

    } on DioError catch(e) {

      String errorMessage = e.response!.data.toString();
      switch(e.type) {
        case DioErrorType.response:
          break;
      }
      return left(errorMessage);
    }
  }
}