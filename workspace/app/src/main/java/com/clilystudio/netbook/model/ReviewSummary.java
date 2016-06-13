package com.clilystudio.netbook.model;

import java.util.Date;

public class ReviewSummary {
    private String _id;
    private ReviewBook book;
    private Date created;
    private ReviewHelpful helpful;
    private String state;
    private String title;

    public ReviewBook getBook() {
        if (this.book == null) {
            this.book = new ReviewBook();
            this.book.set_id("");
            this.book.setTitle("\u8be5\u4e66\u4e0d\u5b58\u5728");
            this.book.setCover("");
            this.book.setType("");
        }
        return this.book;
    }

    public void setBook(ReviewBook reviewBook) {
        this.book = reviewBook;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date date) {
        this.created = date;
    }

    public ReviewHelpful getHelpful() {
        return this.helpful;
    }

    public void setHelpful(ReviewHelpful reviewHelpful) {
        this.helpful = reviewHelpful;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String string) {
        this.state = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
