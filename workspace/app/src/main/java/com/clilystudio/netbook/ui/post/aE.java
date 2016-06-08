package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class aE
        implements DialogInterface.OnClickListener {
    aE(BookReviewListFragment paramBookReviewListFragment) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        if (this.a.g != paramInt) {
            this.a.g = paramInt;
            BookReviewListFragment localBookReviewListFragment = this.a;
            ((BookPostTabActivity) this.a.getActivity());
            localBookReviewListFragment.f = BookPostTabActivity.f(this.a.g);
            this.a.a.setRefreshing();
        }
    }
}

