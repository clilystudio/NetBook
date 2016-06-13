package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.Tweet;

final class J
        implements View.OnClickListener {
    private /* synthetic */ Tweet a;
    private /* synthetic */ G b;

    J(G g, Tweet tweet) {
        this.b = g;
        this.a = tweet;
    }

    @Override
    public final void onClick(View view) {
        Tweet tweet = this.a;
        if (this.a.isRetween()) {
            tweet = this.a.getRefTweet();
        }
        G.c(this.b, tweet);
    }
}
