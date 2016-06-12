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
        if (book == null) {
            book = new ReviewBook();
            book.set_id("");
            book.setTitle("\u8BE5\u4E66\u4E0D\u5B58\u5728");
            book.setCover("");
            book.setType("");
        }
        return book;
    }

    public void setBook(ReviewBook ReviewBook1) {
        book = ReviewBook1;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date Date1) {
        created = Date1;
    }

    public ReviewHelpful getHelpful() {
        return helpful;
    }

    public void setHelpful(ReviewHelpful ReviewHelpful1) {
        helpful = ReviewHelpful1;
    }

    public String getState() {
        return state;
    }

    public void setState(String String1) {
        state = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
