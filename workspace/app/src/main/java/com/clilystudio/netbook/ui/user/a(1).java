package com.clilystudio.netbook.ui.user;

import android.view.View;

import cn.sharesdk.sina.weibo.SinaWeibo;

final class a
        implements View.OnClickListener {
    a(AuthLoginActivity paramAuthLoginActivity) {
    }

    public final void onClick(View paramView) {
        AuthLoginActivity.a(this.a, paramView);
        AuthLoginActivity.a(this.a, SinaWeibo.NAME);
        AuthLoginActivity.b(this.a, "SinaWeibo");
    }
}

