package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class dS implements View$OnClickListener {

    private TweetTabActivity a;

    dS(TweetTabActivity TweetTabActivity1) {
        a = TweetTabActivity1;
    }

    public final void onClick(View View1) {
        TweetTabActivity.d(a);
        TweetTabActivity.j(a);
        TweetTabActivity.a(a, false);
    }
}
