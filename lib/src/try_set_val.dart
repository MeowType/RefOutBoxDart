import 'package:some/index.dart';

import './ref_out_box.dart';

/// Try setting the wrapper box value
/// Can avoid null problems
/// Return whether the setting is successful
bool trySetVal<T>(Out<T> out, T val) {
  if (out == null) return false;
  out.val = val;
  return true;
}

/// Try change the wrapper box value
/// Can avoid null problems
/// Return whether the setting is successful
bool tryChangeVal<T>(Out<T> out, T fn(T)) {
  if (out == null || fn == null) return false;
  out.val = fn(out.val);
  return true;
}

/// Try use the wrapper box value
Maybe<R> tryUseVal<T, R>(Box<T> box, R fn(T)) {
  if (box == null || fn == null) return None<R>();
  return Some<R>(fn(box.val));
}

/// If null Return None else Some
Maybe<T> toMaybe<T>(Box<T> box) {
  if (box == null) return None<T>();
  return Some<T>(box.val);
}