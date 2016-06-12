
package com.clilystudio.netbook.model;

public class ReviewResult {

    private boolean ok;
    private Review review;

    public Review getReview()
    {
        return review;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setReview(Review Review1)
    {
        review = Review1;
    }
}
