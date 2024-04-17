

void printError<T>(T value) {
  print('\x1B[31m$value\x1B[0m');
}

void printWarning<T>(T value) {
  print('\x1B[33m$value\x1B[0m');
}

void printDebug<T>(T value) {
  print('\x1B[34m$value\x1B[0m');
}