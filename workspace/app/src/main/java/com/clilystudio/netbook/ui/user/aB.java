package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.ShareRemoveAdActivity;

final class aB implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aB(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = ShareRemoveAdActivity.a(this.a, "userInfo");
        this.a.startActivity(intent);
        b.a(this.a, "share_remove_entrance_click", "userInfo");
    }
}
