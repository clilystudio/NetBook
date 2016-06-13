package com.clilystudio.netbook.model;

public class ReviewList {
    private boolean ok;
    private ReviewSummary[] reviews;

    public ReviewSummary[] getReviews() {
        return this.reviews;
    }

    public void setReviews(ReviewSummary[] arrreviewSummary) {
        this.reviews = arrreviewSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
