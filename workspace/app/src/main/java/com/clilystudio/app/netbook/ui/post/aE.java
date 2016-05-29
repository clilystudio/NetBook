package com.clilystudio.app.netbook.ui.post;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aE
 * JD-Core Version:    0.6.2
 */