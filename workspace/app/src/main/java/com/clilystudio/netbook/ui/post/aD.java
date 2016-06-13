package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.Review;

final class aD
        implements DialogInterface.OnClickListener {
    private /* synthetic */ Review a;
    private /* synthetic */ BookReviewListFragment b;

    aD(BookReviewListFragment bookReviewListFragment, Review review) {
        this.b = bookReviewListFragment;
        this.a = review;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        BookReviewListFragment.a(this.b, this.a);
    }
}
