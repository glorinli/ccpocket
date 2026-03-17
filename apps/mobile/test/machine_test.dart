import 'package:ccpocket/models/machine.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Machine URL helpers', () {
    test('defaults to ws/http', () {
      const machine = Machine(id: 'm1', host: 'example.com');

      expect(machine.wsUrl, 'ws://example.com:8765');
      expect(machine.httpUrl, 'http://example.com:8765');
    });

    test('uses wss/https when configured', () {
      const machine = Machine(
        id: 'm2',
        host: 'example.com',
        port: 443,
        scheme: WebSocketScheme.wss,
      );

      expect(machine.wsUrl, 'wss://example.com:443');
      expect(machine.httpUrl, 'https://example.com:443');
    });
  });
}
