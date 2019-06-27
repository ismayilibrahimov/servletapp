package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/servletwebapp",
                    "root",
                    "mysql"
            );
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
        return null;
    }

}
