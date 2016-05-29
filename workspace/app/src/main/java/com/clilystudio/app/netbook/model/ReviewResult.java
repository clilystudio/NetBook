package com.clilystudio.app.netbook.model;

public class ReviewResult {
    private boolean ok;
    private Review review;

    public Review getReview() {
        return this.review;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setReview(Review paramReview) {
        this.review = paramReview;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ReviewResult
 * JD-Core Version:    0.6.2
 */