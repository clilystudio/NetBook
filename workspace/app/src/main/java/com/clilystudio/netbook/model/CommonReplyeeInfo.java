package com.clilystudio.netbook.model;

public class CommonReplyeeInfo
        implements ReplyeeInfo {
    private String _id;
    private Author author;
    private int floor;

    public CommonReplyeeInfo() {
    }

    public CommonReplyeeInfo(String paramString, Author paramAuthor, int paramInt) {
        this._id = paramString;
        this.author = paramAuthor;
        this.floor = paramInt;
    }

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public String getCommentId() {
        return this._id;
    }

    public void setCommentId(String paramString) {
        this._id = paramString;
    }

    public int getFloor() {
        return this.floor;
    }

    public void setFloor(int paramInt) {
        this.floor = paramInt;
    }
}

