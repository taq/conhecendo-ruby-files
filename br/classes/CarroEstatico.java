public class CarroEstatico {
  private static int qtde = 0;

  public CarroEstatico() {
    ++qtde;
  }

  public static int qtde() {
    return qtde;
  }

  public static void main(String args[]) {
    CarroEstatico[] carros = new CarroEstatico[10];

    for (int i = 0; i < carros.length; i++) {
      carros[i] = new CarroEstatico();
      System.out.println(CarroEstatico.qtde() + " carros");
    }
  }
}
