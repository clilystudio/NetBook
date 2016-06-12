package com.clilystudio.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;
import android.view.View$OnClickListener;

final class l implements View$OnClickListener {

    private AlertDialog a;
    private ModifyUserInfoActivity b;
    l(ModifyUserInfoActivity ModifyUserInfoActivity1, AlertDialog AlertDialog2) {
        b = ModifyUserInfoActivity1;
        a = AlertDialog2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        ModifyUserInfoActivity.a(b, false);
    }
}
