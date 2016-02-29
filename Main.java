import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import com.mysql.jdbc.PreparedStatement;

public class Main 
{	
public static void main(String args[])
{
 Connection conn = null;
	  Statement stmt = null;
	  PreparedStatement prepStmt = null;
	  ResultSet rs = null;
	 
	
	   new com.mysql.jdbc.Driver();
	   Class.forName("com.mysql.jdbc.Driver").newInstance();
	   String connectionUrl = "jdbc:mysql://localhost:3306/mydata";
	   String connectionUser = "root";
	   String connectionPassword = "root";
	   conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
	   
	   
	   stmt = conn.createStatement();
	            stmt.execute("INSERT INTO Data (Name,id,age) "
	                                + "VALUES ('ramya',1,21,)");
	            System.out.println("Inserted successfully");


}
}