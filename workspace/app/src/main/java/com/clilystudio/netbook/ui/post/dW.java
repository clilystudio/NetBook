package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class dW
        implements View.OnClickListener {
    dW(TweetTimelineFragment paramTweetTimelineFragment) {
    }

    public final void onClick(View paramView) {
        this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
    }
}

