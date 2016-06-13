package com.clilystudio.netbook.model;

public class ReviewResult {
    private boolean ok;
    private Review review;

    public Review getReview() {
        return this.review;
    }

    public void setReview(Review review) {
        this.review = review;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
