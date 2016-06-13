package com.clilystudio.netbook.ui.post;

import android.view.View;

final class aC
        implements View.OnClickListener {
    private /* synthetic */ BookReviewListFragment a;

    aC(BookReviewListFragment bookReviewListFragment) {
        this.a = bookReviewListFragment;
    }

    @Override
    public final void onClick(View view) {
        BookReviewListFragment.e(this.a);
    }
}
