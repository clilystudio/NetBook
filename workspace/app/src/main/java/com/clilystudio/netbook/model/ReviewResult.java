package com.clilystudio.netbook.model;

public class ReviewResult {
    private boolean ok;
    private Review review;

    public Review getReview() {
        return this.review;
    }

    public void setReview(Review paramReview) {
        this.review = paramReview;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

