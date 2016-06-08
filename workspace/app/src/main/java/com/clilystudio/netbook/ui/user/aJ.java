package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aJ
        implements View.OnClickListener {
    aJ(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, UserFollowWeixinActivity.class);
        this.a.startActivity(localIntent);
    }
}

