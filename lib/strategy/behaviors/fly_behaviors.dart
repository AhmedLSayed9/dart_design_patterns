mixin FlyBehavior {
  String fly();
}

mixin class FlyNoWay implements FlyBehavior {
  @override
  String fly() => "I can't fly";
}

mixin class FlyWithWings implements FlyBehavior {
  @override
  String fly() => "I'm flying!!";
}
