class Stack<T> {
  final List<T> _items = [];

  T? pull() => _items.length > 0 ? _items.removeLast() : null;
  void push(T element) => _items.add(element);
}

void main() {
  Stack<int> stack = Stack();

  stack.push(11);
  stack.push(35);

  print(stack.pull()); // 35
  print(stack.pull()); // 11
  print(stack.pull()); // null
}
