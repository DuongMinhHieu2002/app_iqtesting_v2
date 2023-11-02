import 'dart:ui';

import 'package:flutter/material.dart';

class Question {
  String? question;
  String? image;
  Map<String, bool>? answers;

  Question(this.question, this.image, this.answers);
}

class History {
  String? question;
  Map<String, bool>? answers;

  History(this.question, this.answers);
}

class Geographic {
  String? question;
  Map<String, bool>? answers;

  Geographic(this.question, this.answers);
}

class Math {
  String? question;
  Map<String, bool>? answers;

  Math(this.question, this.answers);
}
