/**
 * Namespace example using two classes with same name, but different namespaces
*/

public class Namespace {
  public static void main(String args[]) {
    System.out.println(com.eustaquiorangel.brazilian.Person.favoriteFood());
    System.out.println(com.eustaquiorangel.italian.Person.favoriteFood());
  }
}
