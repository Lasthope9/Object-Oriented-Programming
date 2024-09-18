abstract class Employee {
  String name;
  Employee(this.name);

  // Abstract method to calculate salary
  double calculateSalary();

  // Abstract method to get the employee role
  String getRole();
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }

  @override
  String getRole() {
    return 'Full-Time';
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked)
      : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }

  @override
  String getRole() {
    return 'Part-Time';
  }
}

void main() {
  Employee fullTimeEmp = FullTimeEmployee('Alice', 5000);
  Employee partTimeEmp = PartTimeEmployee('Bob', 20, 120);

  print(
      '${fullTimeEmp.name} (${fullTimeEmp.getRole()}) earns \$${fullTimeEmp.calculateSalary()} per month.');
  print(
      '${partTimeEmp.name} (${partTimeEmp.getRole()}) earns \$${partTimeEmp.calculateSalary()} based on hours worked.');
}
