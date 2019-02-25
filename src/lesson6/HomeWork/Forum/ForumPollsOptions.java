package lesson6.HomeWork.Forum;

import java.util.Date;

public class ForumPollsOptions {
    private long id;
    private ForumPosts forumPost;
    private String title;
    private Date date;

    public ForumPollsOptions(long id, ForumPosts forumPost, String title, Date date) {
        this.id = id;
        this.forumPost = forumPost;
        this.title = title;
        this.date = date;
    }
}
