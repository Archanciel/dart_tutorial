import 'labeled.dart';
import 'maxsize.dart';
import 'maxsizeabstract.dart';
import 'resizabled.dart';

class Component implements Resizabled, Labeled, MaxSize, MaxSizeAbstract {
//                                      implementing MaxSize and MaxSizeAbstract
//                                      has no utility since their variables
//                                      are not usable in Component and must be 
//                                      re-defined here. Being abstract or not
//                                      does not change anything
  String _label;
  double _size;
  int maxSize;
  int maxSizeAb;

  Component(this.maxSize, this.maxSizeAb, {required String label, required double size})
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

  String description() => '$label $size $maxSize $maxSizeAb';
}
