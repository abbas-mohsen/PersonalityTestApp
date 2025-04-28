import '../models/question.dart';
import '../models/answer.dart';
import '../models/personality.dart';

final List<Question> questions = [
  Question(
    text: "How do you approach a difficult decision?",
    answers: [
      Answer(
        text: "Analyze all options logically",
        personality: PersonalityType.Thinker,
      ),
      Answer(
        text: "Go with what feels right emotionally",
        personality: PersonalityType.Feeler,
      ),
      Answer(
        text: "Make a checklist and plan it out",
        personality: PersonalityType.Planner,
      ),
      Answer(
        text: "Take a leap and deal with results later",
        personality: PersonalityType.Adventurer,
      ),
    ],
  ),
  Question(
    text: "What excites you the most?",
    answers: [
      Answer(
        text: "Solving complex problems",
        personality: PersonalityType.Thinker,
      ),
      Answer(
        text: "Connecting deeply with others",
        personality: PersonalityType.Feeler,
      ),
      Answer(
        text: "Creating a clear path to your goals",
        personality: PersonalityType.Planner,
      ),
      Answer(
        text: "Exploring something new",
        personality: PersonalityType.Adventurer,
      ),
    ],
  ),
  Question(
    text: "Which best describes your work style?",
    answers: [
      Answer(
        text: "Detail-focused and logical",
        personality: PersonalityType.Thinker,
      ),
      Answer(
        text: "People-centered and intuitive",
        personality: PersonalityType.Feeler,
      ),
      Answer(
        text: "Organized and systematic",
        personality: PersonalityType.Planner,
      ),
      Answer(
        text: "Flexible and spontaneous",
        personality: PersonalityType.Adventurer,
      ),
    ],
  ),
  Question(
    text: "How do you recharge after a long day?",
    answers: [
      Answer(
        text: "Quiet reflection or reading",
        personality: PersonalityType.Thinker,
      ),
      Answer(
        text: "Spending time with close friends",
        personality: PersonalityType.Feeler,
      ),
      Answer(
        text: "Planning tomorrow's tasks",
        personality: PersonalityType.Planner,
      ),
      Answer(
        text: "Doing something active or exciting",
        personality: PersonalityType.Adventurer,
      ),
    ],
  ),
  Question(
    text: "You're most comfortable when...",
    answers: [
      Answer(
        text: "Things make logical sense",
        personality: PersonalityType.Thinker,
      ),
      Answer(
        text: "Everyone is getting along",
        personality: PersonalityType.Feeler,
      ),
      Answer(
        text: "There's a clear structure",
        personality: PersonalityType.Planner,
      ),
      Answer(
        text: "You're free to try new things",
        personality: PersonalityType.Adventurer,
      ),
    ],
  ),
  Question(
    text: "Your biggest strength is...",
    answers: [
      Answer(text: "Thinking critically", personality: PersonalityType.Thinker),
      Answer(
        text: "Empathizing with others",
        personality: PersonalityType.Feeler,
      ),
      Answer(text: "Staying organized", personality: PersonalityType.Planner),
      Answer(
        text: "Being adventurous",
        personality: PersonalityType.Adventurer,
      ),
    ],
  ),
];
