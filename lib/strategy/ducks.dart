import 'behaviors/fly_behaviors.dart';
import 'behaviors/quack_behaviors.dart';

abstract class Duck with FlyBehavior, QuackBehavior {
  String display();
}

class MallardDuck extends Duck with FlyWithWings, Quack {
  @override
  String display() => "I'm a real Mallard duck";
}

class ModelDuck extends Duck with FlyNoWay, Quack {
  @override
  String display() => "I'm a model duck";
}

class RubberDuck extends Duck with FlyNoWay, Squeak {
  @override
  String display() => "I'm a rubber duck";
}
