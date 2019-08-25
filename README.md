[![pub](https://img.shields.io/pub/v/ref_out_box.svg)](https://pub.dev/packages/ref_out_box) [![MIT](https://img.shields.io/github/license/MeowType/RefOutBoxDart)](https://github.com/MeowType/RefOutBoxDart/blob/master/LICENSE)

---

Wrapping values so that they can be passed by reference, like c#'s ref out

# Example
```dart
void tryDoSome(Out<bool> out) {
  trySetVal(out, true);
}
```

```dart
final out = Out<bool>();

tryDoSome(out);

out.val // true
```

---
```dart
void addRef(Ref<int> ref) {
  tryChangeVal(ref, (val) => val++);
}
```
```dart
final ref = Ref(1);

addRef(ref);
addRef(ref);

ref.val // 3
```