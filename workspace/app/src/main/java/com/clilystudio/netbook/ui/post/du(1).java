package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.util.e;

final class du
        implements View.OnClickListener {
    du(TweetDetailActivity paramTweetDetailActivity) {
    }

    public final void onClick(View paramView) {
        Account localAccount;
        if ((TweetDetailActivity.a(this.a)) && (TweetDetailActivity.c(this.a) != null)) {
            localAccount = am.a(this.a);
            if (G.a(localAccount, TweetDetailActivity.c(this.a).getTweet())) {
                dC localdC = new dC(this.a, this.a, 2131034473);
                String[] arrayOfString = new String[2];
                arrayOfString[0] = localAccount.getToken();
                arrayOfString[1] = TweetDetailActivity.c(this.a).getTweet().get_id();
                localdC.execute(arrayOfString);
            }
        } else {
            return;
        }
        String str = this.a.getString(2131034472);
        if (G.a(TweetDetailActivity.c(this.a).getTweet(), localAccount))
            str = this.a.getString(2131034423);
        e.a(this.a, "\t\t" + str + "\t\t");
    }
}

