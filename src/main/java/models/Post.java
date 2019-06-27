package models;

public class Post {

    private int id;
    private int cat_id;
    private String title;
    private String content;
    private String image;

    public Post(int id, int cat_id, String title, String content, String image) {
        this.id = id;
        this.cat_id = cat_id;
        this.title = title;
        this.content = content;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public int getCat_id() {
        return cat_id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getImage() { return image; }
}
