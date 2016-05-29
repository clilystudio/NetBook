package com.clilystudio.app.netbook.ui.post;

import android.view.View;

import com.clilystudio.app.netbook.ui.user.ModifyUserInfoActivity;

final class bO
        implements View.OnClickListener {
    bO(MyTweetFragment paramMyTweetFragment) {
    }

    public final void onClick(View paramView) {
        this.a.startActivity(ModifyUserInfoActivity.a(this.a.getActivity(), -1L));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bO
 * JD-Core Version:    0.6.2
 */