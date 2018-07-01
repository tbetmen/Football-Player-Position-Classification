package FootballPlayer;

import java.sql.*;

public class Player {
    private String playername;
    private static Koneksi koneksi = new Koneksi();
    private LDA lda;
    private double []ability;
    private double []diskriminan;
    private String position;
    
    public Player() throws SQLException{
        lda = new LDA(koneksi);
        ability = new double[6];
    }
    public String getPlayerName(){
        return this.playername;
    }
    public void setPlayerName(String player){
        this.playername = player;
    }
    public void setPassing(int pass){
        this.ability[0] = pass;
    }
    public void setShooting(int shoot){
        this.ability[1] = shoot;
    }
    public void setPhysical(int physics){
        this.ability[2] = physics;
    }
    public void setDefensive(int defend){
        this.ability[3] = defend;
    }
    public void setSpeed(int speed){
        this.ability[4] = speed;
    }
    public void setDribbling(int dribble){
        this.ability[5] = dribble;
    }
    public void setDiscriminant(){        
        diskriminan = this.lda.getDiscriminantFunctionValues(this.ability);
    }
    
    public double[] getDiscriminant(){
        return this.diskriminan;
    }
    
    public void setPosition(){
        position = this.lda.predict(this.ability);
    }
    
    public String getPosition(){
        return this.position;
    }
}