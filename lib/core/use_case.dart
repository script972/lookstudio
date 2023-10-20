import 'dart:async';

abstract class UseCase<Type, Params> {
  FutureOr<Type> execute(Params params);
}

class NoParams {}
