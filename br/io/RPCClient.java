import java.net.URL;
import java.util.Vector;
import java.util.HashMap;
import org.apache.xmlrpc.common.*;
import org.apache.xmlrpc.client.*;

public class RPCClient {
  public static void main(String args[]) {
    try {
      Vector <Integer>params;
      XmlRpcClientConfigImpl config = new XmlRpcClientConfigImpl();
      config.setServerURL(new URL("http://localhost:8081/RPC2"));
      XmlRpcClient server = new XmlRpcClient();
      server.setConfig(config);

      params = new Vector<Integer>();
      params.addElement(new Integer(5));
      params.addElement(new Integer(3));

      HashMap result = (HashMap) server.execute("soma", params);
      int sum = ((Integer) result.get("resultado")).intValue();
      System.out.println("O resultado da soma é " + Integer.toString(sum));

      params = new Vector<Integer>();
      params.addElement(new Integer(11));
      params.addElement(new Integer(4));
      result = (HashMap) server.execute("divide", params);

      int divide = ((Integer) result.get("resultado")).intValue();
      int resto = ((Integer) result.get("resto")).intValue();
      System.out.println("O resultado da divisão é " + Integer.toString(sum) + " e o resto é: " + Integer.toString(resto));
    } catch(Exception error) {
      System.err.println("erro:" + error.getMessage());
    }
  }
}
