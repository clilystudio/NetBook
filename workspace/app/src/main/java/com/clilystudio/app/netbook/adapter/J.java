package com.clilystudio.app.netbook.adapter;

import android.view.View;

import com.clilystudio.app.netbook.model.Tweet;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.J
 * JD-Core Version:    0.6.2
 */