package com.clilystudio.netbook.model;

import java.util.Date;

public class PostComment {
    private String _id;
    private Author author;
    private String content;
    private Date created;
    private int floor;
    private int likeCount;
    private boolean likedInView;
    private PostCommentReply replyTo;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String string) {
        this.content = string;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date date) {
        this.created = date;
    }

    public int getFloor() {
        return this.floor;
    }

    public void setFloor(int n) {
        this.floor = n;
    }

    public int getLikeCount() {
        return this.likeCount;
    }

    public void setLikeCount(int n) {
        this.likeCount = n;
    }

    @Deprecated
    public PostCommentReply getReplyTo() {
        return this.replyTo;
    }

    public void setReplyTo(PostCommentReply postCommentReply) {
        this.replyTo = postCommentReply;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public boolean isLikedInView() {
        return this.likedInView;
    }

    public void setLikedInView(boolean bl) {
        this.likedInView = bl;
    }

    public ReplyeeInfo toRepliedInfo() {
        return new CommonReplyeeInfo(this.get_id(), this.getAuthor(), this.getFloor());
    }
}
