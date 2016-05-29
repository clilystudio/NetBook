package com.clilystudio.app.netbook.ui.user;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.o
 * JD-Core Version:    0.6.2
 */