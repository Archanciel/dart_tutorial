import 'child_not_override.dart';
import 'child_override.dart';
import 'parent.dart';

void main() {
  Parent parent = Parent(name: 'Walter Schnyder');
  print(parent.description()); // Parent Walter Schnyder

  parent = ChildOverride(name: 'Jean-Pierre Schnyder');
  print(parent.description()); // ChildOverride Jean-Pierre Schnyder

  parent = ChildNotOverride(name: 'Béatrice Schnyder');
  print(parent.description()); // // ChildNotOverride Béatrice Schnyder
}
