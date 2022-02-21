import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_use/src/use_mounted_state.dart';
import 'flutter_hooks_testing.dart';

void main() {
  group('useMountedState', () {
    testWidgets('should return a function', (tester) async {
      final hook = await buildHook((_) => useMountedState());
      expect(hook.current, isA<Function>());
    });

    testWidgets('should return true if component is mounted', (tester) async {
      final hook = await buildHook((_) => useMountedState());
      final isMounted = hook.current();
      expect(isMounted, true);
    });

    testWidgets('should return false if component is unmounted',
        (tester) async {
      final hook = await buildHook((_) => useMountedState());
      await hook.unmount();
      final isMounted = hook.current();
      expect(isMounted, false);
    });
  });
}
