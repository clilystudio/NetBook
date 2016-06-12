package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class dT implements View$OnClickListener {

    private TweetTabActivity a;

    dT(TweetTabActivity TweetTabActivity1) {
        a = TweetTabActivity1;
    }

    public final void onClick(View View1) {
        if (TweetTabActivity.c(a)) {
            TweetTabActivity.d(a);
            TweetTabActivity.a(a, false);
        }
    }
}
