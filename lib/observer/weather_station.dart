import 'observable.dart';
import 'observer.dart';

class WeatherStation implements Observable {
  WeatherStation();

  double? _temperature;
  double? _pressure;

  double? get temperature => _temperature;
  double? get pressure => _pressure;

  void setMeasurements({required double temperature, required double pressure}) {
    if (_temperature == temperature && _pressure == pressure) return;
    _temperature = temperature;
    _pressure = pressure;
    notifyObservers();
  }

  final List<Observer> _observers = [];

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  @override
  void notifyObservers() {
    for (final observer in _observers) {
      observer.update();
    }
  }
}
