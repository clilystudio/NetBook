package com.clilystudio.netbook.ui.user;

import android.view.View;

import cn.sharesdk.sina.weibo.SinaWeibo;

final class a
        implements View.OnClickListener {
    private /* synthetic */ AuthLoginActivity a;

    a(AuthLoginActivity authLoginActivity) {
        this.a = authLoginActivity;
    }

    @Override
    public final void onClick(View view) {
        AuthLoginActivity.a(this.a, view);
        AuthLoginActivity.a(this.a, SinaWeibo.NAME);
        AuthLoginActivity.b(this.a, "SinaWeibo");
    }
}
