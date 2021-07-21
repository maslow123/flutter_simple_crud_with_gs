import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_course_2/application/auth/cubit/auth_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:udemy_course_2/router/router.gr.dart' as app_router;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()..loadUserFromLocal(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
          if(state is AuthLoginSuccess) {
            // go to homepage 
            context.router.push(app_router.Homepage());
            
          } else if(state is AuthError) {
            //prompt error dialog and redirect to login
            context.router.push(app_router.SignInRoute());
          }
        },
        child: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
