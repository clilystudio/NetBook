package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.util.e;

final class du implements View$OnClickListener {

    private TweetDetailActivity a;

    du(TweetDetailActivity TweetDetailActivity1) {
        a = TweetDetailActivity1;
    }

    public final void onClick(View View1) {
        if (TweetDetailActivity.a(a) && TweetDetailActivity.c(a) != null) {
            Account Account2 = am.a((Activity) a);

            if (G.a(Account2, TweetDetailActivity.c(a).getTweet())) {
                dC dC3 = new dC(a, (Activity) a, 2131034473);
                String[] String_1darray4 = new String[2];

                String_1darray4[0] = Account2.getToken();
                String_1darray4[1] = TweetDetailActivity.c(a).getTweet().get_id();
                dC3.execute(String_1darray4);
            } else {
                String String6 = a.getString(2131034472);

                if (G.a(TweetDetailActivity.c(a).getTweet(), Account2))
                    String6 = a.getString(2131034423);
                e.a((Activity) a, new StringBuilder("\t\t").append(String6).append("\t\t").toString());
                return;
            }
        }
    }
}
