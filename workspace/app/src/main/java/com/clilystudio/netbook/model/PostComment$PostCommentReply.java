package com.clilystudio.netbook.model;

public class PostComment$PostCommentReply {
    private String _id;
    private Author author;
    private int floor;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public int getFloor() {
        return this.floor;
    }

    public void setFloor(int n) {
        this.floor = n;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
