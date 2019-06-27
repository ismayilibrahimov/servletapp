package repos;

import config.Database;
import models.Category;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepository {

    private List<Category> categories = new ArrayList<>();

    public List<Category> getAll() {

        try (Connection connection = Database.getConnection()) {
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("select * from category");
            while (result.next()) {
                categories.add(new Category(result.getInt(1), result.getString(2)));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return categories;
    }


}
