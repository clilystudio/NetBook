package com.clilystudio.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;
import android.view.View$OnFocusChangeListener;

final class p implements View$OnFocusChangeListener {

    private AlertDialog a;

    p(ModifyUserInfoActivity ModifyUserInfoActivity1, AlertDialog AlertDialog2) {
        a = AlertDialog2;
    }

    public final void onFocusChange(View View1, boolean boolean2) {
        if (boolean2)
            a.getWindow().setSoftInputMode(5);
    }
}
