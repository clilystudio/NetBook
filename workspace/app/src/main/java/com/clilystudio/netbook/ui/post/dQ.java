package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class dQ implements View$OnClickListener {

    private TweetTabActivity a;

    dQ(TweetTabActivity TweetTabActivity1) {
        a = TweetTabActivity1;
    }

    public final void onClick(View View1) {
        TweetTabActivity.d(a);
        TweetTabActivity.h(a);
        TweetTabActivity.a(a, false);
    }
}
