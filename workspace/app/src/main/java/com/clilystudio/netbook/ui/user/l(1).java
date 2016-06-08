package com.clilystudio.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;

final class l
        implements View.OnClickListener {
    l(ModifyUserInfoActivity paramModifyUserInfoActivity, AlertDialog paramAlertDialog) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ModifyUserInfoActivity.a(this.b, false);
    }
}

