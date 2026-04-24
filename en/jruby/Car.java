// Car.java
public class Car {
  private String brand, color, model;
  private int tank;

  public Car(String brand, String color, String model, int tank) {
    this.brand = brand;
    this.color = color;
    this.model = model;
    this.tank  = tank;
  }

  public String toString() {
    return "brand: " + this.brand + "\n" +
           "color: " + this.color + "\n" +
           "model: " + this.model + "\n" +
           "tank:  " + this.tank;
  }
}
