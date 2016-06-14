package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aG implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aG(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, UserLevelActivity.class);
        this.a.startActivity(intent);
    }
}
