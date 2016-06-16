package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.DialogInterface;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.model.Account;

public final class N {
    private Activity a;

    public N(Activity activity) {
        this.a = activity;
    }

    static /* synthetic */ Activity a(N n) {
        return n.a;
    }

    public final void a(String string) {
        Account account = am.a((Activity) this.a);
        if (account != null) {
            this.a(account.getToken(), string);
        }
    }

    public final void a(String string, String string2) {
        new P(this, 0).b(string, string2);
    }

    public final void a(String string, String string2, boolean bl) {
        CharSequence[] arrcharSequence = this.a.getResources().getStringArray(R.array.post_detail_report);
        h h2 = new h(this.a);
        h2.d = "\u4e3e\u62a5";
        h2.a(arrcharSequence, (DialogInterface.OnClickListener) new O(this, bl, string2, string)).b();
    }

    public final void b(String string, String string2) {
        this.a(string, string2, false);
    }
}
