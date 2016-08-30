// Carro.java
public class Carro {
  private String marca, cor, modelo;
  private int tanque;

  public Carro(String marca, String cor, String modelo, int tanque) {
    this.marca  = marca;
    this.cor    = cor;
    this.modelo = modelo;
    this.tanque = tanque;
  }

  public String toString() {
    return "Marca: " + this.marca + "\n" + "Cor: "+this.cor + "\n" + "Modelo:"+this.modelo + "\n" + "Tanque:" + this.tanque;
  }
}
