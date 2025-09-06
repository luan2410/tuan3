package Model;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private static UserDAO instance;
    private static List<User> users = new ArrayList<>();

    private UserDAO() {} // Singleton Pattern

    public static synchronized UserDAO getInstance() {
        if (instance == null) {
            instance = new UserDAO();
        }
        return instance;
    }

    public void addUser(User user) {
        users.add(user);
    }

    public List<User> getAllUsers() {
        return users;
    }
}