public class StaticCar {
  private static int qty = 0;

  public StaticCar() {
    ++qty;
  }

  public static int qty() {
    return qty;
  }

  public static void main(String args[]) {
    StaticCar[] cars = new StaticCar[10];

    for (int i = 0; i < cars.length; i++) {
      cars[i] = new StaticCar();
      System.out.println(StaticCar.qty() + " cars");
    }
  }
}
