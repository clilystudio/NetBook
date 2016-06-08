package com.clilystudio.netbook.model;

public class PostComment$PostCommentReply {
    private String _id;
    private Author author;
    private int floor;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public int getFloor() {
        return this.floor;
    }

    public void setFloor(int paramInt) {
        this.floor = paramInt;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

