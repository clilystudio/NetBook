package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aD
        implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aD(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, UserUGCActivity.class);
        this.a.startActivity(intent);
    }
}
