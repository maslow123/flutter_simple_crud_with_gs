import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart'; // untuk ekstrak kodenya
part 'user_data.g.dart'; // ekstrak kode json

// flutter pub run build_runner watch : for generating file
@freezed
abstract class UserData2 with _$UserData2 {
  const factory UserData2({
    String? name,
    String? job,
    String? id,
    @JsonKey(name: 'createdAt') String? createData,
  }) = _Data;


  factory UserData2.fromJson(Map<String, dynamic>json) => _$UserData2FromJson(json);
}
