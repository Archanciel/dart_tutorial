import 'labeled.dart';
import 'resizabled.dart';

class Component implements Resizabled, Labeled {
  String _label;
  double _size;

  Component({required String label, required double size})
      : _label = label,
        _size = size;

  @override
  String get label => _label;

  @override
  double get size => _size;

  @override
  set label(String label) {
    _label = label;
  }

  @override
  set size(double size) {
    _size = size;
  }

  String description() => '$label $size';
}
