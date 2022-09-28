import 'package:destini/common/models/choice.dart';
import 'package:destini/common/models/story.dart';

class StoryData {
  Story _currentStory = _initialStory;

  Story get currentStory => _currentStory;

  void updateCurrentStory(int choice) {
    final nextStoryOfChoice1 = _currentStory.choice1.nextStory;
    final nextStoryOfChoice2 = _currentStory.choice2?.nextStory;

    if (choice == 1 && nextStoryOfChoice1 != null) {
      _currentStory = nextStoryOfChoice1;
    }

    if (choice == 2 && nextStoryOfChoice2 != null) {
      _currentStory = nextStoryOfChoice2;
    }
  }

  void goBackToInitialStory() {
    _currentStory = _initialStory;
  }
}

final _initialStory = Story(
  title:
      'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
  choice1: Choice(
    title: 'I\'ll hop in. Thanks for the help!',
    nextStory: _story_2,
  ),
  choice2: Choice(
    title: 'Better ask him if he\'s a murderer first.',
    nextStory: _story_1,
  ),
);

final _story_1 = Story(
  title: 'He nods slowly, unphased by the question.',
  choice1: Choice(
    title: 'At least he\'s honest. I\'ll climb in.',
    nextStory: _story_2,
  ),
  choice2: Choice(
    title: 'Wait, I know how to change a tire.',
    nextStory: _story_3,
  ),
);

final _story_2 = Story(
  title:
      'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
  choice1: Choice(
    title: 'I love Elton John! Hand him the cassette tape.',
    nextStory: _story_5,
  ),
  choice2: Choice(
    title: 'It\'s him or me! You take the knife and stab him.',
    nextStory: _story_4,
  ),
);

final _story_3 = Story(
  title:
      'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
  choice1: Choice(
    title: 'Restart',
  ),
);

final _story_4 = Story(
  title:
      'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
  choice1: Choice(
    title: 'Restart',
  ),
);

final _story_5 = Story(
  title:
      'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
  choice1: Choice(
    title: 'Restart',
  ),
);
