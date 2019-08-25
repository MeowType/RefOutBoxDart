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