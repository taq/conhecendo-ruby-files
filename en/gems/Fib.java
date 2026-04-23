public class Fib {
  public static long calc(int number) {
    if (number < 2) {
      return number;
    }
    return calc(number - 1) + calc(number - 2);
  }

  public static void main(String args[]) {
      long started_at = System.currentTimeMillis();
      System.out.println(calc(Integer.parseInt(args[0])));

      long diff = System.currentTimeMillis() - started_at;
      System.out.println((float) diff / 1000);
  }
}
