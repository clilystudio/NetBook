package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;

final class m implements DialogInterface.OnClickListener {
    private /* synthetic */ boolean a;
    private /* synthetic */ ModifyUserInfoActivity b;

    m(ModifyUserInfoActivity modifyUserInfoActivity, boolean bl) {
        this.b = modifyUserInfoActivity;
        this.a = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        q q2 = new q(this.b, this.b, 2131034218);
        String[] arrstring = new String[1];
        String string = this.a ? "male" : "female";
        arrstring[0] = string;
        q2.b(arrstring);
    }
}
