package com.clilystudio.netbook.model;

public class ReviewList {
    private boolean ok;
    private ReviewSummary[] reviews;

    public ReviewSummary[] getReviews() {
        return this.reviews;
    }

    public void setReviews(ReviewSummary[] paramArrayOfReviewSummary) {
        this.reviews = paramArrayOfReviewSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

