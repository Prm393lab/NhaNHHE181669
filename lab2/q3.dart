void main() {
  // Write an if/else block to check score
  int score = 85;

  if (score >= 90) {
    print('Grade A - Excellent!');
  } else if (score >= 80) {
    print('Grade B - Pretty good!');
  } else if (score >= 70) {
    print('Grade C - Above average!');
  } else if (score >= 60) {
    print('Grade D - Average!');
  } else {
    print('Grade F - Need to try harder!');
  }

  // Write a switch statement for day of week
  String dayOfWeek = 'Friday';

  switch (dayOfWeek) {
    case 'Monday':
      print('Today is Monday - Start of the week!');
      break;
    case 'Tuesday':
      print('Today is Tuesday - Keep going!');
      break;
    case 'Wednesday':
      print('Today is Wednesday - Midweek already!');
      break;
    case 'Thursday':
      print('Today is Thursday - Almost weekend!');
      break;
    case 'Friday':
      print('Today is Friday - Weekend is coming!');
      break;
    case 'Saturday':
      print('Today is Saturday - Day off!');
      break;
    case 'Sunday':
      print('Today is Sunday - Relax time!');
      break;
    default:
      print('Cannot determine day of week');
      break;
  }

  // Loop through collection using for, for-in and forEach
  List<String> subjects = ['Math', 'Literature', 'English', 'Physics', 'Chemistry'];

  print('\nUsing for loop:');
  for (int i = 0; i < subjects.length; i++) {
    print('${i + 1}. ${subjects[i]}');
  }

  print('\nUsing for-in loop:');
  for (String subject in subjects) {
    print('Subject: $subject');
  }

  print('\nUsing forEach:');
  subjects.forEach((subject) {
    print('Course: $subject');
  });

  // Create functions using regular syntax and arrow syntax
  // Regular function
  String greet(String name) {
    return 'Hello, $name!';
  }

  // Function using arrow syntax
  int calculateSquare(int number) => number * number;

  // Call the functions
  print('\nCalling regular function: ${greet('Hiep')}');
  print('Calling arrow function: Square of 5 is ${calculateSquare(5)}');

  // Combined example: using if/else in loop
  print('\nChecking each subject:');
  for (String subject in subjects) {
    if (subject == 'Math' || subject == 'Physics') {
      print('$subject is a natural science subject');
    } else if (subject == 'Literature' || subject == 'English') {
      print('$subject is a social science subject');
    } else {
      print('$subject is another subject');
    }
  }
}
