package com.clilystudio.netbook.ui.user;

import android.view.View;

final class ax implements View.OnClickListener {
    private /* synthetic */ UserFollowWeixinActivity a;

    ax(UserFollowWeixinActivity userFollowWeixinActivity) {
        this.a = userFollowWeixinActivity;
    }

    @Override
    public final void onClick(View view) {
        UserFollowWeixinActivity.a(this.a);
        UserFollowWeixinActivity.b(this.a);
    }
}
