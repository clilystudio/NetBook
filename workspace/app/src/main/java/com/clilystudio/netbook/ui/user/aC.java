package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aC
        implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aC(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, MyMessageActivity.class);
        this.a.startActivity(intent);
    }
}
