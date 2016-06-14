package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class bK implements View.OnClickListener {
    private /* synthetic */ MyTweetFragment a;

    bK(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    @Override
    public final void onClick(View view) {
        this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
    }
}
