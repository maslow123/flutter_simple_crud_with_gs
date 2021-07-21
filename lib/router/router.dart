import 'package:auto_route/auto_route.dart';
import 'package:udemy_course_2/presentation/first_page.dart';
import 'package:udemy_course_2/presentation/home/homepage.dart';
import 'package:udemy_course_2/presentation/second_page.dart';
import 'package:udemy_course_2/presentation/sign_in/sign_in.dart';
import 'package:udemy_course_2/presentation/splash_screen/splash_screen.dart';
import 'package:udemy_course_2/presentation/user/user_page.dart';

// flutter packages pub run build_runner watch --delete-conflicting-outputs
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route', 
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen),
    MaterialRoute(page: FirstPage),
    MaterialRoute(page: SecondPage),
    MaterialRoute(page: Homepage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: UserPage, initial: true)
  ],
)
class $AppRoutes {}