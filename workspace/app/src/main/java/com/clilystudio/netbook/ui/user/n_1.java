
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class n implements DialogInterface$OnClickListener {

    n(ModifyUserInfoActivity ModifyUserInfoActivity1)
    {
        a = ModifyUserInfoActivity1;
    }

    private ModifyUserInfoActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        com.clilystudio.netbook.hpay100.a.a.b( (Activity) a );
        com.clilystudio.netbook.hpay100.a.a.b( (Context) a, "EXTRA_CHANGE_AVATAR", true );
    }
}
