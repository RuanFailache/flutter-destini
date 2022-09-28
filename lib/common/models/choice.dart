import 'package:destini/common/models/story.dart';

class Choice {
  Story? _nextStory;

  final String _title;

  Choice({
    required String title,
    Story? nextStory,
  })  : _title = title,
        _nextStory = nextStory;

  String get title => _title;

  Story? get nextStory => _nextStory;

  void addNextStory(Story story) {
    _nextStory = story;
  }
}
