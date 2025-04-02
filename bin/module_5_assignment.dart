// an abstract class Vehicle with:
abstract class Vehicle {
  // A protected variable _speed.
  int ? _speed ;
  // An abstract method move().
  move();
  // A non-abstract method setSpeed(int speed) to set the speed.
  setSpeed(int speed){

    _speed = speed;

  }



}

// a subclass Car that extends Vehicle:

class Car extends Vehicle{

  // Implemented the move() method to print "The car is moving at $_speed km/h".
  @override
  move() {

  print("The car is moving at $_speed km/h.");

  }

}

// Main Function
main(){

  // Car object
  Car car = Car();
  // setting speed
  car.setSpeed(88);
  // calling the move method
  car.move();


}

