import 'package:dart_design_patterns/strategy/behaviors/behaviors.dart';
import 'package:dart_design_patterns/strategy/ducks.dart';
import 'package:test/test.dart';

void main() {
  test('MallardDuck strategies', () {
    final mallardDuck = MallardDuck();
    expect(mallardDuck.display(), "I'm a real Mallard duck");
    expect(mallardDuck.fly(), FlyWithWings().fly());
    expect(mallardDuck.quack(), Quack().quack());
  });

  test('ModelDuck strategies', () {
    final modelDuck = ModelDuck();
    expect(modelDuck.display(), "I'm a model duck");
    expect(modelDuck.fly(), FlyNoWay().fly());
    expect(modelDuck.quack(), Quack().quack());
  });

  test('RubberDuck strategies', () {
    final rubberDuck = RubberDuck();
    expect(rubberDuck.display(), "I'm a rubber duck");
    expect(rubberDuck.fly(), FlyNoWay().fly());
    expect(rubberDuck.quack(), Squeak().quack());
  });
}
