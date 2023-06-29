    
package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectDao {
    
    public  static Connection  getConnection(){
        Connection connection = null;
        try {
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:sqlserver://localhost:1433;databaseName= quanlybanhang";
            String username = "HODUCVIET\\SQLEXPRESS";
            String password = "123";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
        return  connection;
    }
    public static void main(String[] args) {
        Connection con = ConnectDao.getConnection();
        System.out.println(con);
    }
}
        
