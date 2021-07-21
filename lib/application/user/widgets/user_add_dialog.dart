
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:udemy_course_2/application/user/controller/user_controller.dart';
import 'package:udemy_course_2/application/user/cubit/user_cubit.dart';
import 'package:udemy_course_2/domain/core/user/model/user_req_res.dart';

class UserAddDialog extends StatefulWidget {
  const UserAddDialog({
    Key? key,
  }) : super(key: key);

  @override
  _UserAddDialogState createState() => _UserAddDialogState();
}

class _UserAddDialogState extends State<UserAddDialog> {
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  
  final userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          // TODO: implement listener
          state.maybeMap(
              orElse: () => print('None'),
              success: (value) {
                print(value.userData.toString());
                userController.addDataToList(value.userData);
                Navigator.pop(context);
              });
        },
        builder: (context, state) {
          return Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Name'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: jobController,
                decoration: InputDecoration(hintText: 'Job'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                    onPressed: () {
                      final _data = RequestData(
                        job: jobController.text,
                        name: nameController.text,
                      );
                      BlocProvider.of<UserCubit>(context).createNewUser(_data);
                    },
                    child: Text('Save'),
                  )),
            ],
          );
        },
      ),
    );
  }
}
