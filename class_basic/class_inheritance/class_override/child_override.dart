import 'parent.dart';

class ChildOverride extends Parent {
  ChildOverride({required String name}) : super(name: name);

  @override // not usefull. Can be removed ! Its effect is only to cause
            // the code editor to display a warning in case the base class
            // overriden method was renamed.



  String description() => 'ChildOverride ${super.name}';
}
