package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.Tweet;

final class I
        implements View.OnClickListener {
    I(G paramG, Tweet paramTweet) {
    }

    public final void onClick(View paramView) {
        Tweet localTweet = this.a;
        if (this.a.isRetween())
            localTweet = this.a.getRefTweet();
        G.b(this.b, localTweet);
    }
}

