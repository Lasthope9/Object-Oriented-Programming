class Vehicle {
  String make;
  String model;
  int year;

  Vehicle(this.make, this.model, this.year);

  void startEngine() {
    print('Engine of $make $model ($year) is starting...');
  }

  void stopEngine() {
    print('Engine of $make $model ($year) is stopping...');
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String make, String model, int year, this.numberOfDoors)
      : super(make, model, year);

  void drive() {
    print('Driving the car $make $model.');
  }
}

class Motorcycle extends Vehicle {
  bool hasSidecar;

  Motorcycle(String make, String model, int year, this.hasSidecar)
      : super(make, model, year);

  void ride() {
    print('Riding the motorcycle $make $model.');
  }
}

void main() {
  var myCar = Car('Toyota', 'Camry', 2021, 4);
  myCar.startEngine();
  myCar.drive();

  var myBike = Motorcycle('Harley-Davidson', 'Sportster', 2020, false);
  myBike.startEngine();
  myBike.ride();
}
