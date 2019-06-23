package connection;

import java.sql.*;

public class MyDataBase {
    private Connection getConnection() {
        String driveName = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/design?useSSL=false";
        String usrName = "root";
        String password = "root";
        Connection con = null;
        try {
            Class.forName(driveName);
            con = DriverManager.getConnection(url, usrName, password);
            return con;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void myExecute(PreparedStatement ps) {
        try {
            ps.execute();
            ps.close();
        } catch (SQLException e) {
            System.out.println("MyExecute执行错误");
            e.printStackTrace();
        }

    }

    public ResultSet myExecuteQuery(PreparedStatement ps) {
        try {
            return ps.executeQuery();
        } catch (SQLException e) {
            System.out.println("MyExecute执行错误");
            e.printStackTrace();
            return null;
        }
    }

    public PreparedStatement getPreparedStatement(String sql) {
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            return ps;
        } catch (SQLException e) {
            System.out.println("getPreparedStatement(String sql)错误");
            e.printStackTrace();
            return null;
        }
    }
}
