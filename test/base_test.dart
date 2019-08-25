import 'package:test/test.dart';

import 'package:ref_out_box/index.dart';

void main() {
  test('Out', () {
    void tryDoSome(Out<bool> out) {
      trySetVal(out, true);
    }

    final out = Out<bool>();

    tryDoSome(out);

    expect(out.val, isTrue);
  });

  test('Ref', () {
    void addRef(Ref<int> ref) {
      tryChangeVal(ref, (val) => val + 1);
    }

    final ref = Ref(1);

    addRef(ref);
    addRef(ref);

    expect(ref.val, equals(3));
  });
}
