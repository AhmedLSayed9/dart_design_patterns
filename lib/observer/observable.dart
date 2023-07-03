import 'observer.dart';

abstract interface class Observable {
  const Observable();

  void addObserver(Observer observer);

  void removeObserver(Observer observer);

  void notifyObservers();
}
