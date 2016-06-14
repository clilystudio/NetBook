package com.clilystudio.netbook.ui.user;

import android.view.View;

final class aF implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aF(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        UserInfoActivity.b(this.a);
        b.a(this.a, "my_account_click");
    }
}
