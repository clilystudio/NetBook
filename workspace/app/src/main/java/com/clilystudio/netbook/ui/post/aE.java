package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class aE implements DialogInterface$OnClickListener {

    private BookReviewListFragment a;

    aE(BookReviewListFragment BookReviewListFragment1) {
        a = BookReviewListFragment1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        if (a.g != int2) {
            BookReviewListFragment BookReviewListFragment3;

            a.g = int2;
            BookReviewListFragment3 = a;
            BookReviewListFragment3.f = BookPostTabActivity.f(a.g);
            a.a.setRefreshing();
        }
    }
}
