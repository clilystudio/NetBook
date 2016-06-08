package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class bK
        implements View.OnClickListener {
    bK(MyTweetFragment paramMyTweetFragment) {
    }

    public final void onClick(View paramView) {
        this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
    }
}

