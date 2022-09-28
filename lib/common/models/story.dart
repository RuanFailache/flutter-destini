import 'package:destini/common/models/choice.dart';

class Story {
  final String _title;
  final Choice _choice1;
  final Choice? _choice2;

  const Story({
    required String title,
    required Choice choice1,
    Choice? choice2,
  })  : _title = title,
        _choice1 = choice1,
        _choice2 = choice2;

  String get title => _title;

  Choice get choice1 => _choice1;

  Choice? get choice2 => _choice2;
}
