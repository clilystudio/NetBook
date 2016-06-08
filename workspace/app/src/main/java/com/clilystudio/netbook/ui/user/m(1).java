package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;

final class m
        implements DialogInterface.OnClickListener {
    m(ModifyUserInfoActivity paramModifyUserInfoActivity, boolean paramBoolean) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        q localq = new q(this.b, this.b, 2131034218);
        String[] arrayOfString = new String[1];
        if (this.a) ;
        for (String str = "male"; ; str = "female") {
            arrayOfString[0] = str;
            localq.b(arrayOfString);
            return;
        }
    }
}

