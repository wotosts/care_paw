extension EmptyStringExtensions on String? {
  String orEmpty() => (this == null || this?.isEmpty == true) ? '' : this!;
}