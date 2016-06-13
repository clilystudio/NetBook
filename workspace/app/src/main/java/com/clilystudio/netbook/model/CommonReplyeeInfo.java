package com.clilystudio.netbook.model;

public class CommonReplyeeInfo
        implements ReplyeeInfo {
    private String _id;
    private Author author;
    private int floor;

    public CommonReplyeeInfo() {
    }

    public CommonReplyeeInfo(String string, Author author, int n) {
        this._id = string;
        this.author = author;
        this.floor = n;
    }

    @Override
    public Author getAuthor() {
        return this.author;
    }

    @Override
    public void setAuthor(Author author) {
        this.author = author;
    }

    @Override
    public String getCommentId() {
        return this._id;
    }

    @Override
    public void setCommentId(String string) {
        this._id = string;
    }

    @Override
    public int getFloor() {
        return this.floor;
    }

    @Override
    public void setFloor(int n) {
        this.floor = n;
    }
}
