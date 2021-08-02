/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;



/**
 *
 * @author user
 */
public class DbManager {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    public DbManager() throws ClassNotFoundException, SQLException    //Constructor
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/speeddb","root","");     
    }
    public boolean nonQuery(String query) throws SQLException
    {
        ps=con.prepareStatement(query);
        if(ps.executeUpdate()>0)
            return true;
        else
            return false;      
    }
    public ResultSet selectQuery(String query) throws SQLException
    {
        ps=con.prepareStatement(query);
        rs=ps.executeQuery();
        return rs;
    }
    public String getDate()//getdata()
    {
        Date d=new Date();
        SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
        return(df.format(d));
    }
   
}





