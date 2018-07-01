package FootballPlayer;

import java.util.ArrayList;
import Jama.Matrix;
import java.sql.SQLException; 
import java.sql.*;

public class LDA {

    private double[][] groupMean;
    private double[][] pooledInverseCovariance;
    private double[] probability;
    private ArrayList<Integer> groupList = new ArrayList<Integer>();
    private final double[][] PLAYER;
    private final int[] GROUP;

    private void setGroup(){
        int indeks = 1;
	for(int i = 0; i < 130; i++) {
            this.GROUP[i] = indeks;
            if( (i + 1) % 10 == 0){
		indeks++;
            }			
	}
    }
    
    private void setDataTraining(Koneksi koneksi) throws SQLException{
        koneksi.getKoneksi();  
        
        Statement stmt = null;
        stmt = koneksi.koneksi.createStatement();
        
        String query = "SELECT PASSING,SHOOTING,PHYSICAL,DEFENSIVE,SPEED,DRIBBLING FROM player";
        
        ResultSet res = stmt.executeQuery(query);

        int counter = 0;
        
        while(res.next()){
            int pas  = res.getInt("PASSING");
            int sht = res.getInt("SHOOTING");
            int phy  = res.getInt("PHYSICAL");
            int def = res.getInt("DEFENSIVE");
            int spd  = res.getInt("SPEED");
            int drb = res.getInt("DRIBBLING");
            
            this.PLAYER[counter][0] = pas;
            this.PLAYER[counter][1] = sht;
            this.PLAYER[counter][2] = phy;
            this.PLAYER[counter][3] = def;
            this.PLAYER[counter][4] = spd;
            this.PLAYER[counter][5] = drb;
            counter++;
            
        }
        res.close();
    }
    
    public LDA(Koneksi koneksi) throws SQLException{
        PLAYER = new double[130][6];
        GROUP = new int[130];
        
        //membuat label group
        this.setGroup();
        
        //mengambil data training dari database
        this.setDataTraining(koneksi);

        double[] globalMean;
        double[][][] covariance;

        //membuat group
        for (int i = 0; i < GROUP.length; i++) {
            if (!groupList.contains(GROUP[i])) {
                groupList.add(GROUP[i]);
            }
        }

        //memisahkan PLAYER menjadi subset
        ArrayList<double[]>[] subset = new ArrayList[groupList.size()];
        for (int i = 0; i < subset.length; i++) {
            subset[i] = new ArrayList<double[]>();
            for (int j = 0; j < PLAYER.length; j++) {
                if (GROUP[j] == groupList.get(i)) {
                    subset[i].add(PLAYER[j]);
                }
            }
        }

        //menghitung rata-rata subset group
        groupMean = new double[subset.length][PLAYER[0].length];
        for (int i = 0; i < groupMean.length; i++) {
            for (int j = 0; j < groupMean[i].length; j++) {
                groupMean[i][j] = getGroupMean(j, subset[i]);
            }
        }


        //menghitung rata-rata global
        globalMean = new double[PLAYER[0].length];
        for (int i = 0; i < PLAYER[0].length; i++) {
            globalMean[i] = getGlobalMean(i, PLAYER);
        }

        
        
        //menghitung mean corrected
        for (int i = 0; i < subset.length; i++) {
            for (int j = 0; j < subset[i].size(); j++) {
                double[] v = subset[i].get(j);

                for (int k = 0; k < v.length; k++) {
                    v[k] = v[k] - globalMean[k];
                }

                subset[i].set(j, v);
            }
        }
        
        //menghitung kovarian
        covariance = new double[subset.length][globalMean.length][globalMean.length];
        for (int i = 0; i < covariance.length; i++) {
            for (int j = 0; j < covariance[i].length; j++) {
                for (int k = 0; k < covariance[i][j].length; k++) {
                    for (int l = 0; l < subset[i].size(); l++) {
                        covariance[i][j][k] += (subset[i].get(l)[j] * subset[i]
                                .get(l)[k]);
                    }

                    covariance[i][j][k] = covariance[i][j][k]
                            / subset[i].size();
                }
            }
        }

        //menghitung kovarian tiap group dan men-invers-kan kovarian
        pooledInverseCovariance = new double[globalMean.length][globalMean.length];
        for (int j = 0; j < pooledInverseCovariance.length; j++) {
            for (int k = 0; k < pooledInverseCovariance[j].length; k++) {
                for (int l = 0; l < subset.length; l++) {
                    pooledInverseCovariance[j][k] += ((double) subset[l].size() / (double) PLAYER.length)
                            * covariance[l][j][k];
                }
            }
        }
        
        pooledInverseCovariance = new Matrix(pooledInverseCovariance).inverse().getArray();
        
        //menghitung probablilitas setiap group
        this.probability = new double[subset.length];
        for (int i = 0; i < subset.length; i++) {
            this.probability[i] = (double) subset[i].size()
                    / (double) PLAYER.length;
        }
    }

    private double getGroupMean(int column, ArrayList<double[]> data) {
        double[] d = new double[data.size()];
        for (int i = 0; i < data.size(); i++) {
            d[i] = data.get(i)[column];
        }

        return getMean(d);
    }

    private double getGlobalMean(int column, double data[][]) {
        double[] d = new double[data.length];
        for (int i = 0; i < data.length; i++) {
            d[i] = data[i][column];
        }

        return getMean(d);
    }

    public double[] getDiscriminantFunctionValues(double[] values) {
        double[] function = new double[groupList.size()];
        for (int i = 0; i < groupList.size(); i++) {
            double[] tmp = matrixMultiplication(groupMean[i],
                    pooledInverseCovariance);
            function[i] = (matrixMultiplication(tmp, values))
                    - (.5d * matrixMultiplication(tmp, groupMean[i]))
                    + Math.log(probability[i]);
        }

        return function;
    }    
    
    public String predict(double values[]){
        int group = -1;
        double max = 0;
        double[] discr = this.getDiscriminantFunctionValues(values);
        for (int i = 0; i < discr.length; i++) {
            if (discr[i] > max) {
                max = discr[i];
                group = groupList.get(i);
            }
        }
        
        String position = "";
        switch (group) {
            case 1:
                position = "Center Forward";
                break;
            case 2:
                position = "Supporting Striker";
                break;
            case 3:
                position = "Right Winger";
                break;
            case 4:
                position = "Left Winger";
                break;
            case 5:
                position = "Attacking Midfielder";
                break;
            case 6:
                position = "Right Midfielder";
                break;
            case 7:
                position = "Left Midfielder";
                break;
            case 8:
                position = "Center Midfielder";
                break;
            case 9:
                position = "Defensive Midfielder";
                break;
            case 10:
                position = "Right Back";
                break;
            case 11:
                position = "Left Back";
                break;
            case 12:
                position = "Center Back";
                break;
            case 13:
                position = "Goalkeeper";
                break;
            default:
                position = "Refree";
                break;

        }
        return position;
    }
    
    public String predictPosition(double values[]){
        int group = -1;
        double max = 0;
        double[] discr = this.getDiscriminantFunctionValues(values);
        for (int i = 0; i < discr.length; i++) {
            if (discr[i] > max) {
                max = discr[i];
                group = groupList.get(i);
            }
        }
        
        String position = "";
        switch (group) {
            case 1:
                position = "Center Forward";
                break;
            case 2:
                position = "Supporting Striker";
                break;
            case 3:
                position = "Right Winger";
                break;
            case 4:
                position = "Left Winger";
                break;
            case 5:
                position = "Attacking Midfielder";
                break;
            case 6:
                position = "Right Midfielder";
                break;
            case 7:
                position = "Left Midfielder";
                break;
            case 8:
                position = "Center Midfielder";
                break;
            case 9:
                position = "Defensive Midfielder";
                break;
            case 10:
                position = "Right Back";
                break;
            case 11:
                position = "Left Back";
                break;
            case 12:
                position = "Center Back";
                break;
            case 13:
                position = "Goalkeeper";
                break;
            default:
                position = "Refree";
                break;

        }
        return position;
    }

    private double[][] matrixMultiplication(final double[][] matrixA,
            final double[][] matrixB) {
        int rowA = matrixA.length;
        int colA = matrixA[0].length;
        int colB = matrixB[0].length;

        double c[][] = new double[rowA][colB];
        for (int i = 0; i < rowA; i++) {
            for (int j = 0; j < colB; j++) {
                c[i][j] = 0;
                for (int k = 0; k < colA; k++) {
                    c[i][j] = c[i][j] + matrixA[i][k] * matrixB[k][j];
                }
            }
        }

        return c;
    }

    public double[] matrixMultiplication(double[] A, double[][] B) {

        double[] C = new double[A.length];
        for (int i = 0; i < C.length; i++) {
            C[i] = 0.00000;
        }

        for (int i = 0; i < A.length; i++) { // aRow
            for (int j = 0; j < B[0].length; j++) { // bColumn
                C[i] += A[j] * B[i][j];
            }
        }

        return C;
    }

    private double matrixMultiplication(double[] matrixA, double[] matrixB) {

        double c = 0d;
        for (int i = 0; i < matrixA.length; i++) {
            c += matrixA[i] * matrixB[i];
        }

        return c;
    }

    public static double getMean(final double[] values) {
        double mean = 0.0;
        
        for (int index = 0; index < values.length; index++) {
            mean += values[index];
        }

        return mean / (double) values.length;
    }
    
    public static void main(String[] args) throws SQLException{
        Koneksi koneksi = new Koneksi();  
        LDA test = new LDA(koneksi);
        
        Statement stmt = null;
        stmt = koneksi.koneksi.createStatement();
        
        String query = "SELECT PASSING,SHOOTING,PHYSICAL,DEFENSIVE,SPEED,DRIBBLING,POSITION FROM test";
        
        ResultSet res = stmt.executeQuery(query);

        double TEST[][] = new double[52][6];
        
        String posi[]= new String[52];
        
        int counter = 0;
        
        while(res.next()){
            String pos = res.getString("POSITION");
            int pas  = res.getInt("PASSING");
            int sht = res.getInt("SHOOTING");
            int phy  = res.getInt("PHYSICAL");
            int def = res.getInt("DEFENSIVE");
            int spd  = res.getInt("SPEED");
            int drb = res.getInt("DRIBBLING");
            
            TEST[counter][0] = pas;
            TEST[counter][1] = sht;
            TEST[counter][2] = phy;
            TEST[counter][3] = def;
            TEST[counter][4] = spd;
            TEST[counter][5] = drb;
            posi[counter]=pos;
            counter++;
            
        }
        res.close();
        int success = 0;
        int failed = 0;
        System.out.printf("%-4s%-25s%s\n","No","Predict","Real");
        System.out.println("---------------------------------");
        for (int i = 0; i < TEST.length; i++) {
            System.out.printf("%-4d%-25s%s\n",(i+1),test.predictPosition(TEST[i]),posi[i]);
              
        }
        System.out.println("---------------------------------");
    }
}