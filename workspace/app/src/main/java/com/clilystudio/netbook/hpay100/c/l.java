package com.clilystudio.netbook.hpay100.c;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface$OnKeyListener;
import android.view.KeyEvent;

final class l implements DialogInterface$OnKeyListener {

    private boolean a;     // final access specifier removed
    private Dialog b;     // final access specifier removed
    l(boolean boolean1, Dialog Dialog2) {
        a = boolean1;
        b = Dialog2;
    }

    public final boolean onKey(DialogInterface DialogInterface1, int int2, KeyEvent KeyEvent3) {
        if (int2 != 4 || KeyEvent3.getAction() != 0)
            return false;
        if (a)
            b.cancel();
        return true;
    }
}
