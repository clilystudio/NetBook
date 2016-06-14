package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aE implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aE(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, UserTopicActivity.class);
        this.a.startActivity(intent);
    }
}
