package com.clilystudio.netbook.ui.user;

import android.view.View;

final class U implements Runnable {

    private T a;

    U(T T1) {
        a = T1;
    }

    public final void run() {
        S.a(a.e, a.b, (View) a.c, a.d, a.a);
    }
}
