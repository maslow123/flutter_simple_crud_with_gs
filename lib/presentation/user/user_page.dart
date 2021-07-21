import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:udemy_course_2/application/user/controller/user_controller.dart';
import 'package:udemy_course_2/application/user/widgets/user_add_dialog.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (userController) => Scaffold(
        body: ListView.builder(
            itemCount: userController.getListUserData.length,
            itemBuilder: (context, index) => Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.25,
                  child: ListTile(
                    title:
                        Text('${userController.getListUserData[index].name}'),
                    subtitle: Text(
                        '${userController.getListUserData[index].job}\n${userController.getListUserData[index].createData}'),
                    isThreeLine: true,
                    leading: Text('${userController.getListUserData[0].id}'),
                  ),
                  actions: <Widget>[
                    IconSlideAction(
                      caption: 'Delete',
                      color: Colors.red,
                      icon: Icons.delete,
                      onTap: () {
                        userController.deleteDataOnList(userController.getListUserData[index]);
                      },
                    ),
                  ],                  
                )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.defaultDialog(
              title: 'Add New User',
              content: UserAddDialog(),
            );
          },
          child: Text('Add'),
        ),
      ),
    );
  }
}
