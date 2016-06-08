package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.Tweet;

final class J
        implements View.OnClickListener {
    J(G paramG, Tweet paramTweet) {
    }

    public final void onClick(View paramView) {
        Tweet localTweet = this.a;
        if (this.a.isRetween())
            localTweet = this.a.getRefTweet();
        G.c(this.b, localTweet);
    }
}

