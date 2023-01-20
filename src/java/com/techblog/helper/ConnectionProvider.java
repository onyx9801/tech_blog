
package com.techblog.helper;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null) {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "root", "23october1998");

            }
        } catch (SQLException e) {
         }
        return con;
    }
}
