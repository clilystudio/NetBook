package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class dW
        implements View.OnClickListener {
    private /* synthetic */ TweetTimelineFragment a;

    dW(TweetTimelineFragment tweetTimelineFragment) {
        this.a = tweetTimelineFragment;
    }

    @Override
    public final void onClick(View view) {
        this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
    }
}
