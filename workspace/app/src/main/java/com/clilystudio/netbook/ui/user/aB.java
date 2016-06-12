package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.ShareRemoveAdActivity;
import com.clilystudio.netbook.umeng.a.b;

final class aB implements View$OnClickListener {

    private UserInfoActivity a;

    aB(UserInfoActivity UserInfoActivity1) {
        a = UserInfoActivity1;
    }

    public final void onClick(View View1) {
        Intent Intent2 = ShareRemoveAdActivity.a((Context) a, "userInfo");

        a.startActivity(Intent2);
        b.a((Context) a, "share_remove_entrance_click", "userInfo");
    }
}
