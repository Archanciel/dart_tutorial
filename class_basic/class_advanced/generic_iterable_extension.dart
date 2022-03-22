extension IterableNum<T extends num> on Iterable<T> {
  T sumNum() => reduce((value, element) => (value + element) as T);
}