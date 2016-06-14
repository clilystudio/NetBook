package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aH implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aH(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, UserTaskActivity.class);
        this.a.startActivity(intent);
    }
}
