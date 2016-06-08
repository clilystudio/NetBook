package com.clilystudio.netbook.ui.user;

import android.view.View;

import cn.sharesdk.tencent.qzone.QZone;

final class b
        implements View.OnClickListener {
    b(AuthLoginActivity paramAuthLoginActivity) {
    }

    public final void onClick(View paramView) {
        AuthLoginActivity.a(this.a, paramView);
        AuthLoginActivity.a(this.a, QZone.NAME);
        AuthLoginActivity.b(this.a, "QQ");
    }
}

