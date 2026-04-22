public class Immutable {
   public static void main(String args[]) {
      String mutable = "original content";
      mutable = "this string is mutable!";

      final String immutable = "original content";
      immutable = "this string is immutable!";
   }
}
