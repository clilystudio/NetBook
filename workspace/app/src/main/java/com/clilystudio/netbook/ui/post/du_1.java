package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.netbook.am;
import android.view.View;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.util.e;

final class du implements View.OnClickListener {
    private /* synthetic */ TweetDetailActivity a;

    du(TweetDetailActivity tweetDetailActivity) {
        this.a = tweetDetailActivity;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final void onClick(View view) {
        if (!TweetDetailActivity.a(this.a) || TweetDetailActivity.c(this.a) == null) return;
        Account account = am.a(this.a);
        if (G.a(account, TweetDetailActivity.c(this.a).getTweet())) {
            dC dC2 = new dC(this.a, this.a, 2131034473);
            String[] arrstring = new String[]{account.getToken(), TweetDetailActivity.c(this.a).getTweet().get_id()};
            dC2.execute(arrstring);
            return;
        }
        String string = this.a.getString(2131034472);
        if (G.a(TweetDetailActivity.c(this.a).getTweet(), account)) {
            string = this.a.getString(2131034423);
        }
        e.a((Activity) this.a, "\t\t" + string + "\t\t");
    }
}
