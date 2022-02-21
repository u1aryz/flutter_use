import 'package:flutter_hooks/flutter_hooks.dart';

Function useMountedState() {
  final mountedRef = useRef(false);
  final get = useCallback(() => mountedRef.value, []);

  useEffect(() {
    mountedRef.value = true;
    return () {
      mountedRef.value = false;
    };
  });

  return get;
}
