package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.view.View$OnClickListener;

final class ax implements View$OnClickListener {

    private UserFollowWeixinActivity a;

    ax(UserFollowWeixinActivity UserFollowWeixinActivity1) {
        a = UserFollowWeixinActivity1;
    }

    public final void onClick(View View1) {
        UserFollowWeixinActivity.a(a);
        UserFollowWeixinActivity.b(a);
    }
}
