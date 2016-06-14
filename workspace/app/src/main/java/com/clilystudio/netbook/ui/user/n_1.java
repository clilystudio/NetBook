package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.DialogInterface;

final class n implements DialogInterface.OnClickListener {
    private /* synthetic */ ModifyUserInfoActivity a;

    n(ModifyUserInfoActivity modifyUserInfoActivity) {
        this.a = modifyUserInfoActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        a.b(this.a);
        a.b((Context) this.a, "EXTRA_CHANGE_AVATAR", true);
    }
}
