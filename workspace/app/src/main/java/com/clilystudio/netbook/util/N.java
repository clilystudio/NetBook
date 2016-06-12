package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.Account;

public final class N {

    private Activity a;

    public N(Activity Activity1) {
        a = Activity1;
    }

    static Activity a(N N1) {
        return N1.a;
    }

    public final void a(String String1) {
        Account Account2 = am.a(a);

        if (Account2 != null)
            a(Account2.getToken(), String1);
    }

    public final void a(String String1, String String2) {
        new P(this, (byte) 0).b(new String[]{String1, String2});
    }

    public final void a(String String1, String String2, boolean boolean3) {
        Object[] Object_1darray4 = a.getResources().getStringArray(2131361802);
        h h5 = new h((Context) a);

        h5.d = "\u4E3E\u62A5";
        h5.a((CharSequence[]) Object_1darray4, (DialogInterface$OnClickListener) new O(this, boolean3, String2, String1)).b();
    }

    public final void b(String String1, String String2) {
        a(String1, String2, false);
    }
}
