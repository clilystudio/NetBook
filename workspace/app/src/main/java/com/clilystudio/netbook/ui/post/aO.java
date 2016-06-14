package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class aO implements DialogInterface.OnClickListener {
    private /* synthetic */ BookTopicListFragment a;

    aO(BookTopicListFragment bookTopicListFragment) {
        this.a = bookTopicListFragment;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        if (this.a.g != n) {
            this.a.g = n;
            BookTopicListFragment bookTopicListFragment = this.a;
            (BookPostTabActivity) this.a.getActivity();
            bookTopicListFragment.f = BookPostTabActivity.f(this.a.g);
            this.a.a.setRefreshing();
        }
    }
}
