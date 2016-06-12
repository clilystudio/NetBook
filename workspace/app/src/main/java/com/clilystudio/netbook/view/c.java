package com.clilystudio.netbook.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.ui.cd;
import com.cocosw.bottomsheet.g;

public final class c {

    private Activity a;
    private cd b;
    public c(Activity Activity1, cd cd2) {
        a = Activity1;
        b = cd2;
    }

    static cd a(c c1) {
        return c1.b;
    }

    public final Dialog a() {
        return (Dialog) new g(a).a(2131558406).a().a((DialogInterface$OnClickListener) new d(this)).b();
    }
}
