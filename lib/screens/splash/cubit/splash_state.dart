part of 'splash_cubit.dart';


class SplashState{}

final class SplashInitialState extends SplashState{}

final class SplashNavigateToNextRoute extends SplashState{
  final String route;

  SplashNavigateToNextRoute({required this.route});
}
