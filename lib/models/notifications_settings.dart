import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class NotificationSettings {
  String title;
  bool value;
  BuildContext c;
  NotificationSettings({
    @required this.title,
    this.value = false,
    this.c = null,
  });
}
