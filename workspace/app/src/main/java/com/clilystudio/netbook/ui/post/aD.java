package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.Review;

final class aD
        implements DialogInterface.OnClickListener {
    aD(BookReviewListFragment paramBookReviewListFragment, Review paramReview) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        BookReviewListFragment.a(this.b, this.a);
    }
}

