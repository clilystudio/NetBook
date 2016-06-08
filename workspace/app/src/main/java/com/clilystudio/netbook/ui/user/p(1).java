package com.clilystudio.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;

final class p
        implements View.OnFocusChangeListener {
    p(ModifyUserInfoActivity paramModifyUserInfoActivity, AlertDialog paramAlertDialog) {
    }

    public final void onFocusChange(View paramView, boolean paramBoolean) {
        if (paramBoolean)
            this.a.getWindow().setSoftInputMode(5);
    }
}

