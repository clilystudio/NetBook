package com.clilystudio.netbook.ui.user;

import android.view.View;

final class c
        implements View.OnClickListener {
    private /* synthetic */ AuthLoginActivity a;

    c(AuthLoginActivity authLoginActivity) {
        this.a = authLoginActivity;
    }

    @Override
    public final void onClick(View view) {
        AuthLoginActivity.a(this.a, view);
        AuthLoginActivity.a(this.a);
    }
}
