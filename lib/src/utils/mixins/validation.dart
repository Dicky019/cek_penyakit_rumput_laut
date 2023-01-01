import '../extensions/string_extension.dart';

mixin Validation {
  String? validatorNull(String? value) {
    return value.isNullOrEmpty ? "Is Can't Empty" : null;
  }
}
