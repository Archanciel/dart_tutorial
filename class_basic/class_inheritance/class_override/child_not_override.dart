import 'parent.dart';

class ChildNotOverride extends Parent {
  ChildNotOverride({required String name}) : super(name: name);

  String description() => 'ChildNotOverride ${super.name}';
}
