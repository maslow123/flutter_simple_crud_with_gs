/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:udemy_course_2/application/auth/cubit/auth_cubit.dart';
import 'package:udemy_course_2/domain/auth/model/login_request.dart';
import 'package:auto_route/auto_route.dart';
import 'package:udemy_course_2/router/router.gr.dart' as app_router;

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // email: eve.holt@reqres.in
  // pass: xxx
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            print('error');
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('${state.errorMessage}'),
                    ));
          } else if (state is AuthLoading) {
            print('Loading ...');
          } else if (state is AuthLoginSuccess) {
            print('Login Successfully: ${state.dataLogin}');

            BlocProvider.of<AuthCubit>(context).saveUserToLocal(state.dataLogin);
          } else if (state is AuthSuccess) {

            context.router.push(app_router.Homepage());
          } else {
            print('Something wrong ...');
          }
        },
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.grey.shade800,
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    ListTile(
                        title: TextField(
                      controller: _emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Email address:",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.email,
                            color: Colors.white30,
                          )),
                    )),
                    Divider(
                      color: Colors.grey.shade600,
                    ),
                    ListTile(
                        title: TextField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Password:",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white30,
                          )),
                    )),
                    Divider(
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: (state is AuthLoading)
                              ? loginButtonLoading()
                              : loginButton(context),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Forgot your password?',
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ));
  }

  RaisedButton loginButton(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        final _requestData = LoginRequest(
            email: 'eve.holt@reqres.in', password: 'xxx');
        BlocProvider.of<AuthCubit>(context).signInUser(_requestData);
      },
      color: Colors.cyan,
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white70, fontSize: 16.0),
      ),
    );
  }

  RaisedButton loginButtonLoading() {
    return RaisedButton(
        onPressed: null,
        color: Colors.cyan,
        child: CircularProgressIndicator());
  }
}
