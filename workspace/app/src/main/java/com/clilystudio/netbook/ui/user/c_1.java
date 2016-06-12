package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.view.View$OnClickListener;

final class c implements View$OnClickListener {

    private AuthLoginActivity a;

    c(AuthLoginActivity AuthLoginActivity1) {
        a = AuthLoginActivity1;
    }

    public final void onClick(View View1) {
        AuthLoginActivity.a(a, View1);
        AuthLoginActivity.a(a);
    }
}
