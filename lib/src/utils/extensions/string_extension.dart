import 'dynamic_extension.dart';

extension XNullableString on String? {
  /// [INFO]
  /// Use this for check if its null or empty
  bool get isNullOrEmpty => !isNotNull || this!.trim() == '';
  String get valueDefault => this ?? '-';
}
