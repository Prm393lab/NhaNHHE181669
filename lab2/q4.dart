// Create a Car class with properties and methods
class Car {
  String brand;
  int year;

  // Default constructor
  Car(this.brand, this.year);

  // Named constructor
  factory Car.luxury(String brand, int year) {
    print('Creating luxury car: $brand year $year');
    return Car(brand, year);
  }

  // A method
  void startEngine() {
    print('$brand car engine is starting...');
  }

  // Another method
  void displayInfo() {
    print('$brand car manufactured in $year');
  }
}

// Create ElectricCar subclass that inherits from Car
class ElectricCar extends Car {
  int batteryCapacity; // Battery capacity in kWh

  // Constructor for ElectricCar
  ElectricCar(String brand, int year, this.batteryCapacity)
    : super(brand, year);

  // Override startEngine method
  @override
  void startEngine() {
    print('$brand electric motor is starting... No noise!');
  }

  // ElectricCar specific method
  void chargeBattery() {
    print(
      'Charging battery for $brand car... Battery capacity: ${batteryCapacity}kWh',
    );
  }

  // Override displayInfo method
  @override
  void displayInfo() {
    print(
      'Electric car $brand manufactured in $year with battery capacity ${batteryCapacity}kWh',
    );
  }
}

void main() {
  // Create Car object using default constructor
  Car car1 = Car('Toyota', 2022);
  car1.displayInfo();
  car1.startEngine();

  print('');

  // Create Car object using named constructor
  Car car2 = Car.luxury('Mercedes', 2023);
  car2.displayInfo();
  car2.startEngine();

  print('');

  // Create ElectricCar object
  ElectricCar electricCar = ElectricCar('Tesla', 2024, 75);
  electricCar.displayInfo();
  electricCar.startEngine();
  electricCar.chargeBattery();

  print('');

  // Check inheritance
  print('Type checking:');
  print('electricCar is instance of Car: ${electricCar is Car}');
  print(
    'electricCar is instance of ElectricCar: ${electricCar is ElectricCar}',
  );
  print('car1 is instance of ElectricCar: ${car1 is ElectricCar}');
}
