import 'package:dart_design_patterns/observer/weather_displays.dart';
import 'package:dart_design_patterns/observer/weather_station.dart';
import 'package:test/test.dart';

import '../utils.dart';

void main() {
  test('Should notify all observers', () {
    final weatherStation = WeatherStation();
    final temperatureDisplay = TemperatureDisplay(weatherStation);
    final pressureDisplay = PressureDisplay(weatherStation);

    testPrint((prints) {
      temperatureDisplay.display();
      expect(prints.last, 'Temperature: null');

      pressureDisplay.display();
      expect(prints.last, 'Pressure: null');
    });

    testPrint((prints) {
      weatherStation.setMeasurements(temperature: 40, pressure: 30);

      expect(prints[0], 'Temperature: 40.0');
      expect(prints[1], 'Pressure: 30.0');
    });
  });
}
