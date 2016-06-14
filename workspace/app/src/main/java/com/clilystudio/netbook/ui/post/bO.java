package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.ui.user.ModifyUserInfoActivity;

final class bO implements View.OnClickListener {
    private /* synthetic */ MyTweetFragment a;

    bO(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    @Override
    public final void onClick(View view) {
        this.a.startActivity(ModifyUserInfoActivity.a(this.a.getActivity(), -1));
    }
}
