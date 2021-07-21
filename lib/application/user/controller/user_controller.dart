import 'package:get/state_manager.dart';
import 'package:udemy_course_2/domain/core/user/user_data.dart';

class UserController extends GetxController {
    final _listUserData = new List<UserData2>.empty(growable: true);

    addDataToList(UserData2 data) {
      _listUserData.add(data);
      update();
    }

    deleteDataOnList(UserData2 data) {
      _listUserData.remove(data);
      update();
    }
    List<UserData2> get getListUserData => this._listUserData;
}