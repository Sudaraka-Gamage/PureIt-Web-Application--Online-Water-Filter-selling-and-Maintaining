package com.tech;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnecter {
    Connection con1;
    public Connection getCon(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit", "root", "");
            System.out.println("ab");
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DBConnecter.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con1;
    }
    
}
