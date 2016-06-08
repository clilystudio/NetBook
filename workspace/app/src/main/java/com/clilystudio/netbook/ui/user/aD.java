package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aD
        implements View.OnClickListener {
    aD(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, UserUGCActivity.class);
        this.a.startActivity(localIntent);
    }
}

