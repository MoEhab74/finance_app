import 'package:finance_app/views/create_new_password/view.dart';
import 'package:finance_app/views/forget_password/view.dart';
import 'package:finance_app/views/home/view.dart';
import 'package:finance_app/views/on_boarding/view.dart';
import 'package:finance_app/views/login/view.dart';
import 'package:finance_app/views/register/view.dart';
import 'package:finance_app/views/verify_otp/view.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

class RouteGenerator {
  static GoRouter mainRoutingInOurApp = GoRouter(
    initialLocation: AppRoutes.onBoardingView,
    // List of Routes
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingView,
        name: AppRoutes.onBoardingView,
        builder: (context, state) => OnBoardingView(),
      ),
      GoRoute(
        path: AppRoutes.loginView,
        name: AppRoutes.loginView,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: AppRoutes.registerView,
        name: AppRoutes.registerView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: AppRoutes.forgotPasswordView,
        name: AppRoutes.forgotPasswordView,
        builder: (context, state) => const ForgetPassword(),
      ),
      GoRoute(
        path: AppRoutes.otpVerificationView,
        name: AppRoutes.otpVerificationView,
        builder: (context, state) => const VerifyOtpView(),
      ),
      GoRoute(
        path: AppRoutes.createNewPasswordView,
        name: AppRoutes.createNewPasswordView,
        builder: (context, state) => CreateNewPasswordView(),
      ),
      GoRoute(
        path: AppRoutes.homeView,
        name: AppRoutes.homeView,
        builder: (context, state) => HomeView(),
      ),
      // GoRoute(
      //   path: AppRoutes.cardView,
      //   name: AppRoutes.cardView,
      //   builder: (context, state) => CardView(),
      // ),
      // GoRoute(
      //   path: AppRoutes.transactionView,
      //   name: AppRoutes.transactionView,
      //   builder: (context, state) => TransactionView(),
      // ),
      // GoRoute(
      //   path: AppRoutes.profileView,
      //   name: AppRoutes.profileView,
      //   builder: (context, state) => ProfileView(),
      // ),
    ],
  );
}
