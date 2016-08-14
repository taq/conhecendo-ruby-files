/**
 * Exemplo de namespace utilizando duas classes com o mesmo nome, mas com
 * namespaces diferentes
 */
public class Namespace {
  public static void main(String args[]) {
    System.out.println(com.eustaquiorangel.paulista.Pessoa.comidaPreferida());
    System.out.println(com.eustaquiorangel.gaucho.Pessoa.comidaPreferida());
  }
}
