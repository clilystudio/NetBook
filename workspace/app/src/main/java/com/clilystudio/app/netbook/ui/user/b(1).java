package com.clilystudio.app.netbook.ui.user;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.b
 * JD-Core Version:    0.6.2
 */