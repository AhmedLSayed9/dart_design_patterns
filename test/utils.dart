import 'dart:async';

void testPrint(void Function(List<String> prints) body) {
  final prints = <String>[];
  return runZoned(
    () => body(prints),
    zoneSpecification: ZoneSpecification(
      print: (self, parent, zone, line) {
        prints.add(line);
      },
    ),
  );
}
