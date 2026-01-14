void main() {
  // Create a List containing integers
  List<int> numbers = [1, 2, 3, 4, 5];

  // Use arithmetic and comparison operators
  int sum = numbers[0] + numbers[1]; // Addition
  int difference = numbers[2] - numbers[1]; // Subtraction
  bool isEqual = (numbers[0] == 1); // Equality comparison
  bool isGreater = (numbers[4] > numbers[0]); // Greater than comparison

  print('Initial list: $numbers');
  print('Sum of first two elements: $sum');
  print('Difference between third and second element: $difference');
  print('Is first element equal to 1: $isEqual');
  print('Is last element greater than first: $isGreater');

  // Add and remove elements from List
  numbers.add(6);
  print('List after adding 6: $numbers');
  numbers.remove(2);
  print('List after removing 2: $numbers');

  // Create a Set containing unique values
  Set<int> uniqueNumbers = {
    1,
    2,
    3,
    4,
    5,
    5,
    4,
    3,
  }; // Duplicate values will be removed
  print('Set with unique values: $uniqueNumbers');

  // Add and remove elements from Set
  uniqueNumbers.add(7);
  print('Set after adding 7: $uniqueNumbers');
  uniqueNumbers.remove(3);
  print('Set after removing 3: $uniqueNumbers');

  // Create a Map containing key-value pairs
  Map<String, int> ages = {'John': 25, 'Jane': 30, 'Bob': 35};

  print('Initial map: $ages');

  // Access and modify values in Map
  print('John\'s age: ${ages['John']}');
  ages['Alice'] = 28; // Add new key-value pair
  print('Map after adding Alice: $ages');
  ages.remove('Bob'); // Remove key-value pair
  print('Map after removing Bob: $ages');

  // Use logical operator &&
  bool condition1 = (numbers.length > 3);
  bool condition2 = (uniqueNumbers.contains(5));
  bool bothTrue = condition1 && condition2;
  print('Both conditions are true: $bothTrue');

  // Use ternary operator
  String result = (numbers.length > 4) ? 'Long list' : 'Short list';
  print('List status: $result');
}
