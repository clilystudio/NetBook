package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class aE implements DialogInterface.OnClickListener {
    private /* synthetic */ BookReviewListFragment a;

    aE(BookReviewListFragment bookReviewListFragment) {
        this.a = bookReviewListFragment;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        if (this.a.g != n) {
            this.a.g = n;
            BookReviewListFragment bookReviewListFragment = this.a;
            (BookPostTabActivity) this.a.getActivity();
            bookReviewListFragment.f = BookPostTabActivity.f(this.a.g);
            this.a.a.setRefreshing();
        }
    }
}
