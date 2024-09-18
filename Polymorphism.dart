class Vehicle {
  String make;
  String model;

  Vehicle(this.make, this.model);

  void startEngine() {
    print('Starting vehicle engine...');
  }
}

class Car extends Vehicle {
  Car(String make, String model) : super(make, model);

  @override
  void startEngine() {
    print('The car engine roars to life!');
  }
}

class Motorcycle extends Vehicle {
  Motorcycle(String make, String model) : super(make, model);

  @override
  void startEngine() {
    print('The motorcycle engine revs up!');
  }
}

class ElectricCar extends Vehicle {
  ElectricCar(String make, String model) : super(make, model);

  @override
  void startEngine() {
    print('The electric car starts silently.');
  }
}

void main() {
  Vehicle car = Car('Honda', 'Civic');
  Vehicle bike = Motorcycle('Yamaha', 'MT-07');
  Vehicle tesla = ElectricCar('Tesla', 'Model S');

  car.startEngine();
  bike.startEngine();
  tesla.startEngine();
}
