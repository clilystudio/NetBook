package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.ui.user.ModifyUserInfoActivity;

final class bO
        implements View.OnClickListener {
    bO(MyTweetFragment paramMyTweetFragment) {
    }

    public final void onClick(View paramView) {
        this.a.startActivity(ModifyUserInfoActivity.a(this.a.getActivity(), -1L));
    }
}

