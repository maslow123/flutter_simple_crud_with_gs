
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:udemy_course_2/domain/core/user/model/user_req_res.dart';
import 'package:udemy_course_2/domain/core/user/user_data.dart';

class UserRepository {
  Dio _dio = Dio();

  Future<Either<String, UserData2>>createNewUser(RequestData requestData) async {
    print('signInWithEmailAndPassword');
    Response _response;
    try {
      // parsing to dynamic from 
      _response = await _dio.post('https://reqres.in/api/users', data: requestData.toJson());
      final _result = _response.data;

      return right(UserData2.fromJson(_result));

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