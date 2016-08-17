import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Fib {
  public static long calcula(int numero) {
    if (numero < 2) {
      return numero;
    }
    return calcula(numero - 1) + calcula(numero - 2);
  }

  public static void main(String args[]) {
    SimpleDateFormat fmt = new SimpleDateFormat("dd/MM/yyyy H:mm:ss");
    System.out.println(fmt.format(Calendar.getInstance().getTime()));
    System.out.println(calcula(Integer.parseInt(args[0])));
    System.out.println(fmt.format(Calendar.getInstance().getTime()));
  }
}
