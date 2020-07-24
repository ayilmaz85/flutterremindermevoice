// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminding_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RemindingViewModel on RemindingViewBase, Store {
  final _$titleAtom = Atom(name: 'RemindingViewBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$dateAtom = Atom(name: 'RemindingViewBase.date');

  @override
  String get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(String value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  final _$timeAtom = Atom(name: 'RemindingViewBase.time');

  @override
  String get time {
    _$timeAtom.reportRead();
    return super.time;
  }

  @override
  set time(String value) {
    _$timeAtom.reportWrite(value, super.time, () {
      super.time = value;
    });
  }

  final _$pathAtom = Atom(name: 'RemindingViewBase.path');

  @override
  String get path {
    _$pathAtom.reportRead();
    return super.path;
  }

  @override
  set path(String value) {
    _$pathAtom.reportWrite(value, super.path, () {
      super.path = value;
    });
  }

  final _$onemDerecesiAtom = Atom(name: 'RemindingViewBase.onemDerecesi');

  @override
  String get onemDerecesi {
    _$onemDerecesiAtom.reportRead();
    return super.onemDerecesi;
  }

  @override
  set onemDerecesi(String value) {
    _$onemDerecesiAtom.reportWrite(value, super.onemDerecesi, () {
      super.onemDerecesi = value;
    });
  }

  final _$yapildiMiAtom = Atom(name: 'RemindingViewBase.yapildiMi');

  @override
  bool get yapildiMi {
    _$yapildiMiAtom.reportRead();
    return super.yapildiMi;
  }

  @override
  set yapildiMi(bool value) {
    _$yapildiMiAtom.reportWrite(value, super.yapildiMi, () {
      super.yapildiMi = value;
    });
  }

  @override
  String toString() {
    return '''
title: ${title},
date: ${date},
time: ${time},
path: ${path},
onemDerecesi: ${onemDerecesi},
yapildiMi: ${yapildiMi}
    ''';
  }
}
