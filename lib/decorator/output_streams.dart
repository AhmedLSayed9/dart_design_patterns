abstract interface class OutputStream {
  const OutputStream();

  Iterable<String> read();
}

class FileOutputStream implements OutputStream {
  const FileOutputStream();

  @override
  Iterable<String> read() sync* {
    for (final i in ['File-1', 'File-2', 'File-3']) {
      yield i;
    }
  }
}

class ByteArrayOutputStream implements OutputStream {
  const ByteArrayOutputStream();

  @override
  Iterable<String> read() sync* {
    for (final i in ['ByteArray-1', 'ByteArray-2', 'ByteArray-3']) {
      yield i;
    }
  }
}
