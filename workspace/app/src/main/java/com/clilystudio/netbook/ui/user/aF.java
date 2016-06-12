package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class aF implements View$OnClickListener {

    private UserInfoActivity a;

    aF(UserInfoActivity UserInfoActivity1) {
        a = UserInfoActivity1;
    }

    public final void onClick(View View1) {
        UserInfoActivity.b(a);
        com.umeng.a.b.a((Context) a, "my_account_click");
    }
}
