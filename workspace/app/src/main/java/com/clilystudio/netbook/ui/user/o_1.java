package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;
import android.widget.EditText;

final class o
        implements DialogInterface.OnClickListener {
    private /* synthetic */ EditText a;
    private /* synthetic */ ModifyUserInfoActivity b;

    o(ModifyUserInfoActivity modifyUserInfoActivity, EditText editText) {
        this.b = modifyUserInfoActivity;
        this.a = editText;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        s s2 = new s(this.b, this.b, 2131034218);
        String[] arrstring = new String[]{this.a.getText().toString()};
        s2.b(arrstring);
    }
}
