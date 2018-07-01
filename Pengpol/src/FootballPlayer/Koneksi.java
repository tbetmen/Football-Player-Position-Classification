package FootballPlayer;

import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.SQLException; 

public class Koneksi {
    public Connection koneksi;
    private String driver;
    private String jdbc;
    private String host;
    private String port;
    private String database;
    private String url;
    private String user;
    private String pass;
    
    public Koneksi(){
        this.driver = "com.mysql.jdbc.Driver";
        this.jdbc = "jdbc:mysql://";
        this.host = "localhost:";
        this.port = "3306/";
        this.database = "pengpol";
        this.url = jdbc+host+port+database;
        this.user = "admin";
        this.pass = "admin1";
    }
    
    public Connection getKoneksi() throws SQLException{
        if(koneksi == null){
            try{
                Class.forName(driver);
                
                try{
                    koneksi = DriverManager.getConnection(url, user, pass);
                    System.out.println("Koneksi ke database sukses");
                }catch(SQLException err){
                    System.out.println("Koneksi ke database gagal : "+err);
                    System.exit(0);
                }
                
            }catch(ClassNotFoundException err){
                System.out.println("Class driver tidak ditemukan, error pada : "+err);
                System.exit(0);
            }
        }
        return koneksi;
    }
}
