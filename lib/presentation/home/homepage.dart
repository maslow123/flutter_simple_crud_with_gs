import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:udemy_course_2/application/profile/bloc/profileb_bloc.dart';
import 'package:udemy_course_2/domain/auth/model/login_response.dart';
import 'package:udemy_course_2/domain/core/user/model/user_response.dart';
import 'package:udemy_course_2/presentation/sign_in/sign_in.dart';
import 'package:udemy_course_2/util/constants.dart' as constants;
import 'package:auto_route/auto_route.dart';
import 'package:udemy_course_2/router/router.gr.dart' as app_router;

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  LoginResponse? _loginResponse;

  void initState() {
    final _data = GetStorage().read(constants.USER_LOCAL_KEY);
    jsonDecode(_data);

    _loginResponse = LoginResponse.fromJson(jsonDecode(_data));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfilebBloc()..add(ProfilebEvent.getAllUserData()),
      child: BlocConsumer<ProfilebBloc, ProfilebState>(
        listener: (context, state) {
          // TODO: implement listener
          state.maybeMap(
              orElse: () {},
              isLoading: (value) {
                print('Is loading ...');
              },
              isSuccess: (value) {
                print(value.userResponse.toJson());
              });
        },
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => homePageError(context),
              isLoading: (e) => homePageLoading(),
              isSuccess: (value) => homePageScaffold(value.userResponse.data),
              isError: (value) => homePageError(context));
        },
      ),
    );
  }

  Scaffold homePageError(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Something wrong'),
          IconButton(
              onPressed: () {
                BlocProvider.of<ProfilebBloc>(context)
                    .add(ProfilebEvent.getAllUserData());
              },
              icon: Icon(Icons.replay))
        ],
      ),
    ));
  }

  Scaffold homePageLoading() {
    return Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }

  Widget homePageScaffold(List<UserData>? _data) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_loginResponse!.token}'),
        actions: [
          IconButton(
            onPressed: () {
              GetStorage().erase();
              context.router.replace(app_router.SignInRoute());
            }, 
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: _data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('${_data[index].avatar}'),
                ),
                title: Text('${_data[index].firstName}'),
                subtitle: Text('${_data[index].email}'),
              );
            }),
      ),
    );
  }
}
