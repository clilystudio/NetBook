package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.model.Review;

final class aD implements DialogInterface$OnClickListener {

    private Review a;
    private BookReviewListFragment b;
    aD(BookReviewListFragment BookReviewListFragment1, Review Review2) {
        b = BookReviewListFragment1;
        a = Review2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        BookReviewListFragment.a(b, a);
    }
}
