import 'component.dart';
import 'labeled.dart';

void main() {
  Component comp = Component(10, 20, label: 'compo', size: 25.65);

  comp.label = 'component';
  comp.size = 37;

  print(comp.description()); // component 37.0 10 20

  Labeled labeled = comp; // Labeled is the abstract class which contains
  //                         description() method definition

  print(labeled.description()); // component 37.0. 10 20 Since description() as
  //                               well as the label and size getters must be 
  //                               defined in the Component class, description() 
  //                               works ok
}
