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
            this.book.setTitle("该书不存在");
            this.book.setCover("");
            this.book.setType("");
        }
        return this.book;
    }

    public void setBook(ReviewBook paramReviewBook) {
        this.book = paramReviewBook;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public ReviewHelpful getHelpful() {
        return this.helpful;
    }

    public void setHelpful(ReviewHelpful paramReviewHelpful) {
        this.helpful = paramReviewHelpful;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String paramString) {
        this.state = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

