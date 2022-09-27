import 'package:destini/common/components/button.dart';
import 'package:destini/pages/story/layout.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoryLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Text(
              'Story text will go here.',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          CustomButton(
            text: 'Choice 1',
            onPressed: () {},
            backgroundColor: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Choice 2',
            onPressed: () {},
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
