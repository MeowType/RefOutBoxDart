/// Mutable reference wrapper, can in out
class Ref<T> implements Out<T> {
  /// Wrapped value
  T val;
  Ref([this.val]);
}

/// Output reference wrapper, cannot be set value at init
class Out<T> implements Box<T> {
  /// Wrapped value
  T val;
}

/// Base wrapper box, indicating immutable references
class Box<T> {
  /// Wrapped value
  final T val;
  const Box([this.val]);
}