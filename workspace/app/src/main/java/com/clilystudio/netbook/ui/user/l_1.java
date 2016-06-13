package com.clilystudio.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;

final class l
        implements View.OnClickListener {
    private /* synthetic */ AlertDialog a;
    private /* synthetic */ ModifyUserInfoActivity b;

    l(ModifyUserInfoActivity modifyUserInfoActivity, AlertDialog alertDialog) {
        this.b = modifyUserInfoActivity;
        this.a = alertDialog;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        ModifyUserInfoActivity.a(this.b, false);
    }
}
