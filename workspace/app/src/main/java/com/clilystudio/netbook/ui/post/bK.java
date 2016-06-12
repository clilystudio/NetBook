package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class bK implements View$OnClickListener {

    private MyTweetFragment a;

    bK(MyTweetFragment MyTweetFragment1) {
        a = MyTweetFragment1;
    }

    public final void onClick(View View1) {
        a.startActivity(AuthLoginActivity.a((Context) a.getActivity()));
    }
}
