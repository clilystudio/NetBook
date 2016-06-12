package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.view.View;
import android.view.View$OnClickListener;

final class dt implements View$OnClickListener {

    private TweetDetailActivity a;

    dt(TweetDetailActivity TweetDetailActivity1) {
        a = TweetDetailActivity1;
    }

    public final void onClick(View View1) {
        TweetDetailActivity.a(a, ((Integer) View1.getTag()).intValue());
        if (TweetDetailActivity.a(a)) {
            dA dA3 = new dA(a, (Activity) a, 2131034584);
            String[] String_1darray4 = new String[3];

            String_1darray4[0] = TweetDetailActivity.b(a).getToken();
            String_1darray4[1] = TweetDetailActivity.c(a).getTweet().get_id();
            String_1darray4[2] = String.valueOf(TweetDetailActivity.d(a));
            dA3.b(String_1darray4);
        }
    }
}
