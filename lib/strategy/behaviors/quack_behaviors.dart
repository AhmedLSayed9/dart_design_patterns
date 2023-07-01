mixin QuackBehavior {
  String quack();
}

mixin class Quack implements QuackBehavior {
  @override
  String quack() => 'Quack';
}

mixin class Squeak implements QuackBehavior {
  @override
  String quack() => 'Squeak';
}

mixin class MuteQuack implements QuackBehavior {
  @override
  String quack() => '<< Silence >>';
}
