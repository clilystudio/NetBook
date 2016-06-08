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
    private PostComment.PostCommentReply replyTo;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String paramString) {
        this.content = paramString;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public int getFloor() {
        return this.floor;
    }

    public void setFloor(int paramInt) {
        this.floor = paramInt;
    }

    public int getLikeCount() {
        return this.likeCount;
    }

    public void setLikeCount(int paramInt) {
        this.likeCount = paramInt;
    }

    @Deprecated
    public PostComment.PostCommentReply getReplyTo() {
        return this.replyTo;
    }

    public void setReplyTo(PostComment.PostCommentReply paramPostCommentReply) {
        this.replyTo = paramPostCommentReply;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public boolean isLikedInView() {
        return this.likedInView;
    }

    public void setLikedInView(boolean paramBoolean) {
        this.likedInView = paramBoolean;
    }

    public ReplyeeInfo toRepliedInfo() {
        return new CommonReplyeeInfo(get_id(), getAuthor(), getFloor());
    }
}

