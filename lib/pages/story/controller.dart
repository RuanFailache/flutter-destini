import 'package:destini/common/data/story.dart';
import 'package:destini/common/models/story.dart';

class StoryController {
  final _storyData = StoryData();

  Story get _currentStory => _storyData.currentStory;

  String get currentStoryTitle => _currentStory.title;

  String get currentStoryChoice1 => _currentStory.choice1.title;

  String? get currentStoryChoice2 => _currentStory.choice2?.title;

  void goToNextStory(int choice) {
    _storyData.updateCurrentStory(choice);
  }
}
