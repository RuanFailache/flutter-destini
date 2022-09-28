import 'package:destini/common/components/button.dart';
import 'package:destini/pages/story/controller.dart';
import 'package:destini/pages/story/layout.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final _storyController = StoryController();

  Widget buildButtonGroup() {
    final secondChoice = _storyController.currentStoryChoice2;

    if (secondChoice == null) {
      return CustomButton(
        text: _storyController.currentStoryChoice1,
        onPressed: () {
          setState(() {
            _storyController.goToNextStory(1);
          });
        },
        backgroundColor: Colors.red,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomButton(
          text: _storyController.currentStoryChoice1,
          onPressed: () {
            setState(() {
              _storyController.goToNextStory(1);
            });
          },
          backgroundColor: Colors.red,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          text: secondChoice,
          onPressed: () {
            setState(() {
              _storyController.goToNextStory(2);
            });
          },
          backgroundColor: Colors.blue,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StoryLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              _storyController.currentStoryTitle,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          buildButtonGroup(),
        ],
      ),
    );
  }
}
