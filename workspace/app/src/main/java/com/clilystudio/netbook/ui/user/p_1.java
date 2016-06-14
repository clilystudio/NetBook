package com.clilystudio.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;

final class p implements View.OnFocusChangeListener {
    private /* synthetic */ AlertDialog a;

    p(ModifyUserInfoActivity modifyUserInfoActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override
    public final void onFocusChange(View view, boolean bl) {
        if (bl) {
            this.a.getWindow().setSoftInputMode(5);
        }
    }
}
