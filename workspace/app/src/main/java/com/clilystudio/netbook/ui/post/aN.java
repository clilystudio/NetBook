package com.clilystudio.netbook.ui.post;

import android.view.View;

final class aN implements View.OnClickListener {
    private /* synthetic */ BookTopicListFragment a;

    aN(BookTopicListFragment bookTopicListFragment) {
        this.a = bookTopicListFragment;
    }

    @Override
    public final void onClick(View view) {
        BookTopicListFragment.e(this.a);
    }
}
