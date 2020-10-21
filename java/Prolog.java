package yapayzekaodev;
import org.jpl7.*;
import java.util.*;
public final class Prolog {
    private String csv;
    private String prolog;
    private Query q;
    public void setCsv(String csv){
        this.csv=csv;
    }
    public void setProlog(String prolog){
        this.prolog=prolog;
    }
    Prolog(){
        String query;
        setCsv("'D:/eur.csv'");
        setProlog("'D:/proje.pl'");
        query="consult("+prolog+").";
        q=new Query(query);
        System.out.println(prolog+" Dosyasi Consult İşlemi:"+this.q.hasSolution());
        System.out.println(this.addDatabase());
    }
    Prolog(String prolog,String csv){
        String query;
        setCsv(csv);
        setProlog(prolog);
        query="consult("+prolog+").";
        q=new Query(query);
        System.out.println(prolog+" Dosyasi Consult İşlemi:"+this.q.hasSolution());
        System.out.println(this.addDatabase());
    }
    public String insertData(String Date, String USD, String JPY, String BGN, String CYP, String CZK, String DKK, String EEK, String GBP, String HUF, String LTL, String LVL, String MTL, String PLN, String ROL, String RON, String SEK, String SIT, String SKK, String CHF, String ISK, String NOK, String HRK, String RUB, String TRL, String TRY, String AUD, String BRL, String CAD, String CNY, String HKD, String IDR, String ILS, String INR, String KRW, String MXN, String MYR, String NZD, String PHP, String SGD, String THB, String ZAR){
        String query;
        query = "insertData("+csv+",'"+Date+"',"+USD+","+JPY+","+BGN+","+CYP+","+CZK+","+DKK+","+EEK+","+GBP+","+HUF+","+LTL+","+LVL+","+MTL+","+PLN+","+ROL+","+RON+","+SEK+","+SIT+","+SKK+","+CHF+","+ISK+","+NOK+","+HRK+","+RUB+","+TRL+","+TRY+","+AUD+","+BRL+","+CAD+","+CNY+","+HKD+","+IDR+","+ILS+","+INR+","+KRW+","+MXN+","+MYR+","+NZD+","+PHP+","+SGD+","+THB+","+ZAR+").";
        q=new Query(query);
        String don="";
        Map<String, Term>[] dizi = q.allSolutions();
        for (Map<String, Term> map : dizi) {
            don+=map.toString()+"\n";
        }
        don= don.replace(", ", " ");
        don= don.replace("{", "");
        don= don.replace("}", "");
        return don;
    }
    public String updateData(String Date, String USD, String JPY, String BGN, String CYP, String CZK, String DKK, String EEK, String GBP, String HUF, String LTL, String LVL, String MTL, String PLN, String ROL, String RON, String SEK, String SIT, String SKK, String CHF, String ISK, String NOK, String HRK, String RUB, String TRL, String TRY, String AUD, String BRL, String CAD, String CNY, String HKD, String IDR, String ILS, String INR, String KRW, String MXN, String MYR, String NZD, String PHP, String SGD, String THB, String ZAR){
        String query = "updateData("+csv+",'"+Date+"',"+USD+","+JPY+","+BGN+","+CYP+","+CZK+","+DKK+","+EEK+","+GBP+","+HUF+","+LTL+","+LVL+","+MTL+","+PLN+","+ROL+","+RON+","+SEK+","+SIT+","+SKK+","+CHF+","+ISK+","+NOK+","+HRK+","+RUB+","+TRL+","+TRY+","+AUD+","+BRL+","+CAD+","+CNY+","+HKD+","+IDR+","+ILS+","+INR+","+KRW+","+MXN+","+MYR+","+NZD+","+PHP+","+SGD+","+THB+","+ZAR+").";
        q=new Query(query);
        String don="";
        Map<String, Term>[] dizi = q.allSolutions();
        for (Map<String, Term> map : dizi) {
            don+=map.toString()+"\n";
        }
        don= don.replace(", ", " ");
        don= don.replace("{", "");
        don= don.replace("}", "");
        return don;
    }
    public String deleteData(String Date){
        String query;
        query = "deleteData("+csv+","+Date+").";
        q=new Query(query);
        return Date+" tarihli veri silinme işlemi:"+q.hasSolution();
    }
    public String addDatabase(){
        String query = "addDatabase("+this.csv+").";
        q=new Query(query);
        return csv+" adli veritabani ekleme işlemi:"+q.hasSolution();
    }
    public String deleteDatabase(){
        String query = "deleteDatabase().";
        q=new Query(query);
        return csv+" adli veritabani silme işlemi:"+q.hasSolution();
    }
    public String updateDatabase(){
        String query = "updateDatabase("+csv+").";
        q=new Query(query);
        return csv+" adli veritabani guncelleme işlemi:"+q.hasSolution(); 
    }
    public String Listing(){
        String query;
        query="listing.";
        q=new Query(query);
        String don="";
        Map<String, Term>[] dizi = q.allSolutions();
        for (Map<String, Term> map : dizi) {
            don+=map.toString()+"\n";
        }
        don= don.replace(", ", " ");
        don= don.replace("{", "");
        don= don.replace("}", "");
        return don;
    }
    public String getDate(String Date){
        String query;
        query="fact("+Date+",USD,JPY,BGN,CYP,CZK,DKK,EEK,GBP,HUF,LTL,LVL,MTL,PLN,ROL,RON,SEK,SIT,SKK,CHF,ISK,NOK,HRK,RUB,TRL,TRY,AUD,BRL,CAD,CNY,HKD,IDR,ILS,INR,KRW,MXN,MYR,NZD,PHP,SGD,THB,ZAR,_).";
        q=new Query(query);
        String don="";
        Map<String, Term>[] dizi = q.allSolutions();
        for (Map<String, Term> map : dizi) {
            don+=map.toString()+"\n";
        }
        don= don.replace(", ", "\n");
        don= don.replace("{", "");
        don= don.replace("}", "");
        return don;
    }
    
    public String getBetweenUSD(String b1,String b2){
        String query;
        query="getBetweenUSD("+b1+","+b2+",Tarih,Kur).";
        q=new Query(query);
        String don="";
        Map<String, Term>[] dizi = q.allSolutions();
        for (Map<String, Term> map : dizi) {
            don+=map.toString().substring(1, (map.toString().length()-1))+"\n";
        }
        return don;
    }
    public String getBetweenJPY(String b1,String b2){
        String query;
        query="getBetweenJPY("+b1+","+b2+",Tarih,Kur).";
        q=new Query(query);
        String don="";
        Map<String, Term>[] dizi = q.allSolutions();
        for (Map<String, Term> map : dizi) {
            don+=map.toString().substring(1, (map.toString().length()-1))+"\n";
        }
        return don;
    }
    public String getBetweenGBP(String b1,String b2){
        String query;
        query="getBetweenGBP("+b1+","+b2+",Tarih,Kur).";
        q=new Query(query);
        String don="";
        Map<String, Term>[] dizi = q.allSolutions();
        for (Map<String, Term> map : dizi) {
            don+=map.toString().substring(1, (map.toString().length()-1))+"\n";
        }
        return don;
    }
    public String getBetweenTRY(String b1,String b2){
        String query,don="";
        query="getBetweenTRY("+b1+","+b2+",Tarih,Kur).";
        q=new Query(query);
        Map<String, Term>[] dizi = q.allSolutions();
        for (Map<String, Term> map : dizi) {
            don+=map.toString().substring(1, (map.toString().length()-1))+"\n";
        }
        return don;
    }
}
