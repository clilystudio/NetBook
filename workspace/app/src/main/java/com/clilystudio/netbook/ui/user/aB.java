package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.ShareRemoveAdActivity;

final class aB
        implements View.OnClickListener {
    aB(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = ShareRemoveAdActivity.a(this.a, "userInfo");
        this.a.startActivity(localIntent);
        b.a(this.a, "share_remove_entrance_click", "userInfo");
    }
}

