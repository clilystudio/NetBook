package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;

import com.arcsoft.hpay100.a.a;

final class n
        implements DialogInterface.OnClickListener {
    n(ModifyUserInfoActivity paramModifyUserInfoActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        a.b(this.a);
        a.b(this.a, "EXTRA_CHANGE_AVATAR", true);
    }
}

