
package com.clilystudio.netbook.model;

public class ReviewList {

    private boolean ok;
    private ReviewSummary[] reviews;

    public ReviewSummary[] getReviews()
    {
        return reviews;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setReviews(ReviewSummary[] ReviewSummary_1darray1)
    {
        reviews = ReviewSummary_1darray1;
    }
}
