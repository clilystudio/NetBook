package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aJ implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aJ(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, UserFollowWeixinActivity.class);
        this.a.startActivity(intent);
    }
}
