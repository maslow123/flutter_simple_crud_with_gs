
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:udemy_course_2/domain/auth/model/login_request.dart';
import 'package:udemy_course_2/domain/auth/model/login_response.dart';

class AuthRepository {
  Dio _dio = Dio();

  Future<Either<String, LoginResponse>>signInWithEmailAndPassword({
    required LoginRequest loginRequest
  }) async {
    print('signInWithEmailAndPassword');
    Response _response;
    try {
      print('try');
      _response = await _dio.post('https://reqres.in/api/login', data: loginRequest.toJson());

      LoginResponse _loginResp = LoginResponse.fromJson(_response.data);
      return right(_loginResp);

    } on DioError catch(e) {

      String errorMessage = e.response!.data.toString();
      print('before switch');
      switch(e.type) {
        case DioErrorType.response:
          print('masuk sini gag');
          errorMessage = e.response!.data['error'];
          break;
      }

      print('errorMessage: ${errorMessage}');
      return left(errorMessage);
    }
  }
}