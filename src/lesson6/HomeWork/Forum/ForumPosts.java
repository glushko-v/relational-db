package lesson6.HomeWork.Forum;

import java.util.Date;

public class ForumPosts {
    private long id;
    private ForumSubCategories subCategory;
    private Users user;
    private int parentPost;
    private String title;
    private String content;
    private boolean isPoll;
    private Date date;
    private String ip;

    public ForumPosts(long id, ForumSubCategories subCategory, Users user, int parentPost, String title, String content, boolean isPoll, Date date, String ip) {
        this.id = id;
        this.subCategory = subCategory;
        this.user = user;
        this.parentPost = parentPost;
        this.title = title;
        this.content = content;
        this.isPoll = isPoll;
        this.date = date;
        this.ip = ip;
    }
}
