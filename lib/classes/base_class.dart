import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class BaseClass {
  final String id;
  final String lastUpdated;

  BaseClass()
      : id = const Uuid().v4(),
        lastUpdated = DateTime.now().toIso8601String();

  @override
  bool operator ==(covariant BaseClass other) {
    return id == other.id && lastUpdated == other.lastUpdated;
  }

  @override
  int get hashCode => id.hashCode;
}
