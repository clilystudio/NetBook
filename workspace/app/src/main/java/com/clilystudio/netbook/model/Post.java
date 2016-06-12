package com.clilystudio.netbook.model;

import java.util.Date;

public class Post {

    private String _id;
    private Author author;
    private PostBook book;
    private int commentCount;
    private String content;
    private Date created;
    private String shareLink;
    private String title;
    private String type;
    private int voteCount;
    private Vote[] votes;

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author Author1) {
        author = Author1;
    }

    public PostBook getBook() {
        if (book == null) {
            book = new PostBook();
            book.set_id("");
            book.setTitle("\u6B64\u4E66\u4E0D\u5B58\u5728");
        }
        return book;
    }

    public void setBook(PostBook PostBook1) {
        book = PostBook1;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int int1) {
        commentCount = int1;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String String1) {
        content = String1;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date Date1) {
        created = Date1;
    }

    public String getShareLink() {
        return shareLink;
    }

    public void setShareLink(String String1) {
        shareLink = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }

    public int getVoteCount() {
        return voteCount;
    }

    public void setVoteCount(int int1) {
        voteCount = int1;
    }

    public Vote[] getVotes() {
        return votes;
    }

    public void setVotes(Vote[] Vote_1darray1) {
        votes = Vote_1darray1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
