package com.clilystudio.app.netbook.model;

public class ReviewList {
    private boolean ok;
    private ReviewSummary[] reviews;

    public ReviewSummary[] getReviews() {
        return this.reviews;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setReviews(ReviewSummary[] paramArrayOfReviewSummary) {
        this.reviews = paramArrayOfReviewSummary;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ReviewList
 * JD-Core Version:    0.6.2
 */