import 'package:intl/intl.dart';

class MyBaseClass with MixinClassWeekDayDate {
  final String _name;

  MyBaseClass({required String name}) : _name = name;

  String get name => _name;
}

class MySubClass extends MyBaseClass with MixinClassDateOnly {
  final String _surName;

  MySubClass({required String name, String surName = ''})
      : _surName = surName,
        super(name: name);

  String describe() => '$name: $_surName';
}

class MixinClassWeekDayDate {
  /*
  This mixin class is added to MyBaseClass which inherits from Object.
  */
  String todayWeekday() {
    final now = new DateTime.now();
    String dayShortName_ddmmyy = DateFormat('EEE, dd/MM/yy').format(now);

    return dayShortName_ddmmyy;
  }
}

class MixinClassDateOnly {
  /*
  This mixin class is added to MySubClass which inherits from MyBaseClass.
  */
  String todayDateOnly() {
    final now = new DateTime.now();
    String ddmmyy = DateFormat('dd/MM/yy').format(now);

    return ddmmyy;
  }
}

class MySubSubClass extends MySubClass with MixinClassDateTime {
  double _salary;

  MySubSubClass({required String name, String surname = '', double salary = 0})
      : _salary = salary,
        super(name: name, surName: surname);

  double get salary => _salary;
  set salary(double salary) => _salary = salary;
}

mixin MixinClassDateTime on MySubClass {
  /*
  This mixin class inherits from MySubClass (meaning of 'on' keyword). It is
  added to MySubSubClass which inherits from MySubClass.
  */
  String todayDateTime() {
    final now = new DateTime.now();
    String ddmmyy = DateFormat('dd/MM/yy HH:mm:ss').format(now);

    return '$name $ddmmyy';
  }
}

extension on MySubSubClass {
  String describeUpperCase() {
    return describe().toUpperCase();
  }

  double hourPerDay = 8;
}

void main() {
  MySubClass msc = MySubClass(name: 'JPS', surName: 'Paulo le scientifique');

  print(msc.describe());
  print(msc.todayWeekday()); // defined in MixinClassWeekDayDate which inherits
  //                            from Object and is added to MyBaseClass
  print(msc.todayDateOnly()); // defined in MixinClassDateOnly which inherits
  //                             from Object and is added to MySubClass

  MySubSubClass masc =
      MySubSubClass(name: 'Béa', surname: 'Bebel', salary: 3500.0);

  print('\n${masc.describeUpperCase()}'); // describeUpperCase() method
  //                                         added to MySubSubClass using
  //                                         extension, not mixin !
  print(masc.todayWeekday()); // defined in MixinClassWeekDayDate which inherits
  //                             from Object and is added to MyBaseClass
  print(masc.todayDateOnly()); // defined in MixinClassDateOnly which inherits
  //                              from Object and is added to MySubClass
  print(masc.todayDateTime()); // defined in MixinClassDateTime which inherits
  //                              from MySubClass and is added to MySubSubClass
}
