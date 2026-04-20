public class Imutavel {
   public static void main(String args[]) {
      String mutable = "conteúdo original";
      mutable = "essa string é mutável!";

      final String immutable = "conteúdo original";
      immutable = "essa string é imutável!";
   }
}
