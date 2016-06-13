package com.clilystudio.netbook.ui.user;

import android.view.View;

import cn.sharesdk.tencent.qzone.QZone;

final class b
        implements View.OnClickListener {
    private /* synthetic */ AuthLoginActivity a;

    b(AuthLoginActivity authLoginActivity) {
        this.a = authLoginActivity;
    }

    @Override
    public final void onClick(View view) {
        AuthLoginActivity.a(this.a, view);
        AuthLoginActivity.a(this.a, QZone.NAME);
        AuthLoginActivity.b(this.a, "QQ");
    }
}
