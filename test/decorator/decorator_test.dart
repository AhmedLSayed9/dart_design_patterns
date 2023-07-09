import 'package:dart_design_patterns/decorator/filter_output_streams.dart';
import 'package:dart_design_patterns/decorator/output_streams.dart';
import 'package:test/test.dart';

void main() {
  test(
    'FileOutputStream',
    () {
      const fileOutput = ['File-1', 'File-2', 'File-3'];
      const fileOutputStream = FileOutputStream();

      const lowerCaseOutput = LowerCaseOutputStream(fileOutputStream);
      expect(lowerCaseOutput.read(), fileOutput.map((e) => e.toLowerCase()));

      const singleLineOutput = SingleLineOutputStream(fileOutputStream);
      expect(singleLineOutput.read(), fileOutput.map((e) => '$e\n'));

      const lowerCaseAndSingleLineOutput =
          SingleLineOutputStream(LowerCaseOutputStream(fileOutputStream));
      expect(
        lowerCaseAndSingleLineOutput.read(),
        fileOutput.map((e) => '${e.toLowerCase()}\n'),
      );
    },
  );

  test(
    'ByteArrayOutputStream',
    () {
      const byteArrayOutput = ['ByteArray-1', 'ByteArray-2', 'ByteArray-3'];
      const byteArrayOutputStream = ByteArrayOutputStream();

      const lowerCaseOutput = LowerCaseOutputStream(byteArrayOutputStream);
      expect(lowerCaseOutput.read(), byteArrayOutput.map((e) => e.toLowerCase()));

      const singleLineOutput = SingleLineOutputStream(byteArrayOutputStream);
      expect(singleLineOutput.read(), byteArrayOutput.map((e) => '$e\n'));

      const lowerCaseAndSingleLineOutput =
          SingleLineOutputStream(LowerCaseOutputStream(byteArrayOutputStream));
      expect(
        lowerCaseAndSingleLineOutput.read(),
        byteArrayOutput.map((e) => '${e.toLowerCase()}\n'),
      );
    },
  );
}
