package repos;

import config.Database;
import models.Post;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostRepository {
    private List<Post> posts = new ArrayList<>();
    private Post post;

    public List<Post> getAll() {

        try (Connection connection = Database.getConnection()) {
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("select * from post order by id desc");
            while (result.next()) {
                posts.add(
                        new Post(
                                result.getInt(1),
                                result.getInt(2),
                                result.getString(3),
                                result.getString(4),
                                result.getString(5)
                        )
                );
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return posts;
    }


    public List<Post> getPostsByCatId(int id) {

        try (Connection connection = Database.getConnection()) {
            PreparedStatement statement = connection.prepareStatement("select * from post where cat_id = ? order by id desc");
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                posts.add(
                        new Post(
                                result.getInt(1),
                                result.getInt(2),
                                result.getString(3),
                                result.getString(4),
                                result.getString(5)
                        )
                );
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return posts;
    }


    public List<Post> getPostsByTitle(String title) {

        try (Connection connection = Database.getConnection()) {
            PreparedStatement statement = connection.prepareStatement("select * from post where title like ? order by id desc");
            statement.setString(1, "%" + title + "%");
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                posts.add(
                        new Post(
                                result.getInt(1),
                                result.getInt(2),
                                result.getString(3),
                                result.getString(4),
                                result.getString(5)
                        )
                );
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return posts;
    }





    public Post getPost(int id) {

        try (Connection connection = Database.getConnection()) {
            PreparedStatement statement = connection.prepareStatement("select * from post where id = ?");
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();

            if(result.next()) {

                post = new Post(
                        result.getInt(1),
                        result.getInt(2),
                        result.getString(3),
                        result.getString(4),
                        result.getString(5)
                );
            }


        } catch (SQLException e) {
            System.out.println(e);
        }

        return post;
    }


    public Integer insertPost(int catId, String title, String content, String image) {
        int result = 0;
        content = content != null ? content : "";
        image = image != null ? image : "";

        try (Connection connection = Database.getConnection()) {
            PreparedStatement statement = connection.prepareStatement("insert into post(cat_id, title, content, image) values(?,?,?,?)");
            statement.setInt(1, catId);
            statement.setString(2, title);
            statement.setString(3, content);
            statement.setString(4, image);
            result = statement.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

        return result;
    }


    public Integer deletePost(int contentId) {
        int result = 0;

        try (Connection connection = Database.getConnection()) {
            PreparedStatement statement = connection.prepareStatement("delete from post where id = ?");
            statement.setInt(1, contentId);
            result = statement.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

        return result;
    }


    public Integer updatePost(int contentId, int catId, String title, String content, String image) {
        int result = 0;
        content = content != null ? content : "";
        image = image != null ? image : "";

        try (Connection connection = Database.getConnection()) {
            PreparedStatement statement = connection.prepareStatement("" +
                    "update post set cat_id = ?, title = ?, content = ?, image = ? where id = ?");
            statement.setInt(1, catId);
            statement.setString(2, title);
            statement.setString(3, content);
            statement.setString(4, image);
            statement.setInt(5, contentId);
            result = statement.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

        return result;
    }
}
