
import com.sun.jdi.connect.spi.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;


/**
 *
 * @author tharu
 */
public class databaseConnection {
    
    final static String JDBC_DRIVER = "Com.mysql.jdbc.Driver";
    final static String DB_URL = "jdbc:mysql://localhost:3306/tech_company";
    
    final static String USER = "root";
    final static String PASS = "";
    
    public static Connection connection() throws SQLException{
        
            try{
            Class.forName(JDBC_DRIVER);
            
            return (Connection) DriverManager.getConnection(DB_URL,USER,PASS);
            
        }catch (ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null,e);
        /*catch(ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
            */
            
            
        return null;   
        }
        //return null;
    }
    
}
