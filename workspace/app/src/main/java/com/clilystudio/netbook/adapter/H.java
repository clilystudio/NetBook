package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.Tweet;

final class H
        implements View.OnClickListener {
    H(G paramG, Tweet paramTweet) {
    }

    public final void onClick(View paramView) {
        Tweet localTweet = this.a;
        if (this.a.isRetween())
            localTweet = this.a.getRefTweet();
        G.a(this.b, localTweet);
    }
}

