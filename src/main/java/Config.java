public class Config {
    public String getUrl() {
        return "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    }
    public String getUser() {
        return "'iffy'@'localhost'";
    }
    public String getPassword() {
        return "annoying";
    }
}