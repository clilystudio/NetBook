package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;
import android.widget.EditText;

final class o
        implements DialogInterface.OnClickListener {
    o(ModifyUserInfoActivity paramModifyUserInfoActivity, EditText paramEditText) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        s locals = new s(this.b, this.b, 2131034218);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.a.getText().toString();
        locals.b(arrayOfString);
    }
}

