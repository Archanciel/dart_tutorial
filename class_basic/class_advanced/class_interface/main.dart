import 'component.dart';
import 'labeled.dart';

void main() {
  Component comp = Component(label: 'compo', size: 25.65);

  comp.label = 'component';
  comp.size = 37;

  print(comp.description()); // component 37.0

  Labeled labeled = comp;

  print(labeled.description()); // component 37.0. Since description() as well
  //                               as the label and size getters must be defined
  //                               in the Component class, descrition() works ok
}
