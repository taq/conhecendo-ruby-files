public class Fib {
  public static long calcula(int numero) {
    if (numero < 2) {
      return numero;
    }
    return calcula(numero - 1) + calcula(numero - 2);
  }

  public static void main(String args[]) {
      long started_at = System.currentTimeMillis();
      System.out.println(calcula(Integer.parseInt(args[0])));

      long diff = System.currentTimeMillis() - started_at;
      System.out.println((float) diff / 1000);
  }
}
