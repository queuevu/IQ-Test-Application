
class Questions{
  late final String QuestionText;
  late final List<String> options;
  late final String correctAnswer;

  Questions({required this.QuestionText,required this.options,required this.correctAnswer});
}

List<Questions> questions=[
  Questions(
    QuestionText: "Which number should come next?\n2,6,12,20,30,?",
    options: ["36","42","44","56"],
    correctAnswer: "42"
  ),
  Questions(
    QuestionText: "Find the odd one out\nApple,Mango,Carrot,Banana",
    options: ["Apple","Mango","Carrot","Banana"],
    correctAnswer: "Carrot"
  ),
  Questions(
    QuestionText: "A train moving at 60 km/h takes 9 seconds to pass a pole. What is the length of the train",
    options: ["100 meter","120 meter","150 meter","180 meter"],
    correctAnswer: "150 meter"
  ),
  Questions(
    QuestionText: "Which word is the closest in the meaning to \"Ephemeral\"?",
    options: ["Lasting","Fleeting","Strong","Bright"],
    correctAnswer: "Fleeting"
  ),
  Questions(
    QuestionText: "If a cube has all its faces painted and is then cut into 64 smaller cubes, how many of these cubes will have exactly one face painted?",
    options: ["8","16","24","32"],
    correctAnswer: "24"
  ),
  Questions(
    QuestionText: "John is taller than Kevin, and Kevin is shorter than Rachel. Who is shortest?",
    options: ["John","Kevin","Rachel","Can not be determined"],
    correctAnswer: "Kevin"
  ),
  Questions(
    QuestionText: "Find the missing number\n4,9,16,25,?,49",
    options: ["30","36","40","42"],
    correctAnswer: "36"
  ),
  Questions(
    QuestionText: "Which word does not belong to the group?\nBlue,Red,Green,Circle",
    options: ["Blue","Red","Green","Circle"],
    correctAnswer: "Circle"
  ),
  Questions(
    QuestionText: "if 5 cats can catch 5 mice in 5 minutes, how many cats are needed to catch 100 mice in 100 minutes?",
    options: ["5","10","20","25"],
    correctAnswer: "5"
  ),
  Questions(
    QuestionText: "If a doctor gives you 3 pills and tells you to take one every half hour, how long will it take to finish all the \npills?",
    options: ["1 hour","1.5 hours","2 hours","3 hours"],
    correctAnswer: "1 hour"
  )
];
