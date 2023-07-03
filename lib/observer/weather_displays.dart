import 'weather_station.dart';

import 'observer.dart';

abstract interface class DisplayElement {
  void display();
}

class TemperatureDisplay implements Observer, DisplayElement {
  TemperatureDisplay(this._weatherStation) {
    _weatherStation.addObserver(this);
  }

  final WeatherStation _weatherStation;

  @override
  void update() {
    display();
  }

  @override
  void display() {
    print('Temperature: ${_weatherStation.temperature}');
  }
}

class PressureDisplay implements Observer, DisplayElement {
  PressureDisplay(this._weatherStation) {
    _weatherStation.addObserver(this);
  }

  final WeatherStation _weatherStation;

  @override
  void update() {
    display();
  }

  @override
  void display() {
    print('Pressure: ${_weatherStation.pressure}');
  }
}
