package com.clilystudio.netbook.ui.user;

import android.view.View;

final class aF
        implements View.OnClickListener {
    aF(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        UserInfoActivity.b(this.a);
        b.a(this.a, "my_account_click");
    }
}

