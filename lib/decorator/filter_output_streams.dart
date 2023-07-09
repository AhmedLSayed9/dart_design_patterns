import 'output_streams.dart';

abstract class FilterOutputStream implements OutputStream {
  const FilterOutputStream(this.outputStream);

  final OutputStream outputStream;

  @override
  Iterable<String> read();
}

class LowerCaseOutputStream extends FilterOutputStream {
  const LowerCaseOutputStream(super.outputStream);

  @override
  Iterable<String> read() sync* {
    for (final i in super.outputStream.read()) {
      yield i.toLowerCase();
    }
  }
}

class SingleLineOutputStream extends FilterOutputStream {
  const SingleLineOutputStream(super.outputStream);

  @override
  Iterable<String> read() sync* {
    for (final i in super.outputStream.read()) {
      yield '$i\n';
    }
  }
}
