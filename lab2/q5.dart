import 'dart:async';
import 'dart:math';

// Async function using Future and await
Future<String> fetchData() async {
  print('Starting to fetch data...');

  // Simulate waiting time using Future.delayed
  await Future.delayed(Duration(seconds: 2));

  return 'Data loaded successfully!';
}

// Function simulating data loading that can fail
Future<String?> fetchUserData() async {
  await Future.delayed(Duration(milliseconds: 1500));

  // Randomly return null or data
  Random random = Random();
  if (random.nextBool()) {
    return 'User: John Doe';
  } else {
    return null; // Simulate error or no data
  }
}

void main() async {
  print('=== Exercise 5: Async, Future, Null Safety & Streams ===\n');

  // Use async function with Future and await
  print('1. Using async function with Future and await:');
  String result = await fetchData();
  print(result);

  print('\n2. Practice null safety operators:');

  // Use ? operator (conditional access)
  String? nullableName = 'Alice';
  String? nullName = null;

  print('Non-null name: ${nullableName?.toUpperCase()}');
  print('Null name: ${nullName?.toUpperCase()}'); // Will print nothing because null

  // Use ?? operator (provide default value when null)
  String name1 = nullableName ?? 'Default name';
  String name2 = nullName ?? 'Default name';

  print('Name 1 (not null): $name1');
  print('Name 2 (provided default): $name2');

  // Use ! operator (null assertion - only use when sure it's not null)
  if (nullableName != null) {
    print('Name when sure it\'s not null: ${nullableName!.length} characters');
  }

  // Simulate handling nullable data
  String? userData = await fetchUserData();
  if (userData != null) {
    print('User information: $userData');
  } else {
    print('User information not found');
  }

  // Use ?? operator in handling nullable data
  String safeUserData = userData ?? 'No user data';
  print('Safe user data: $safeUserData');

  print('\n3. Create and listen to simple Stream:');

  // Create a Stream of integers
  Stream<int> numberStream = Stream.fromIterable([1, 2, 3, 4, 5]);

  // Listen to values from Stream
  await for (int number in numberStream) {
    print('Received number: $number');
  }

  print('\n4. Create Stream with delay:');

  // Create a Stream with delay between values
  Stream<int> delayedNumberStream() async* {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(Duration(milliseconds: 500));
      yield i;
    }
  }

  // Listen to delayed Stream
  int count = 0;
  await delayedNumberStream().forEach((number) {
    print('Value from delayed Stream: $number');
    count++;
  });

  print('\nTotal values received from delayed Stream: $count');

  print('\n5. Combine Future and Stream:');

  // Create Future simulating data loading
  Future<List<int>> loadNumbers() async {
    await Future.delayed(Duration(seconds: 1));
    return [10, 20, 30, 40, 50];
  }

  // Convert list to Stream
  Stream<int> createStreamFromFuture() async* {
    List<int> numbers = await loadNumbers();
    for (int number in numbers) {
      yield number;
    }
  }

  print('Data from Future converted to Stream:');
  await for (int number in createStreamFromFuture()) {
    print('Number from Future-Stream: $number');
  }

  print('\nAll tasks completed!');
}
