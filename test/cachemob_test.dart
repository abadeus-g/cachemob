import 'package:cachemob/cachemob.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CacheMob', () {
    test('can write and read a value for a given key', () {
      final cache = CacheMob();
      const key = '__key__';
      const value = '__value__';
      expect(cache.read(key: key), isNull);
      cache.write(key: key, value: value);
      expect(cache.read(key: key), equals(value));
    });
  });
}