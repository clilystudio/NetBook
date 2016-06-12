package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.user.ModifyUserInfoActivity;

final class bO implements View$OnClickListener {

    private MyTweetFragment a;

    bO(MyTweetFragment MyTweetFragment1) {
        a = MyTweetFragment1;
    }

    public final void onClick(View View1) {
        a.startActivity(ModifyUserInfoActivity.a((Context) a.getActivity(), -1L));
    }
}
