package com.clilystudio.netbook.util;

import android.content.Context;
import android.widget.Toast;

final class ad implements Runnable {

    private Context a;
    private String b;
    private int c;
    ad(Context Context1, String String2, int int3) {
        a = Context1;
        b = String2;
        c = int3;
    }

    public final void run() {
        Toast.makeText(a, (CharSequence) b, c).show();
    }
}
