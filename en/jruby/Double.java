import org.jruby.*;
import org.jruby.embed.LocalVariableBehavior;
import org.jruby.embed.PathType;
import org.jruby.embed.ScriptingContainer;

public class Double {
   public static void main(String args[]) {
      try {
         ScriptingContainer container = new ScriptingContainer(LocalVariableBehavior.PERSISTENT);
         container.put("num", 2);

         String script = "doublejava.rb";
         System.out.println("Calling the " + script + " script ...");
         long value = (Long) container.runScriptlet(PathType.CLASSPATH, script);
         System.out.println("Result: " + value);
      } catch(Exception e) {
         System.err.println("Error: " + e.getMessage());
      }
   }
}
