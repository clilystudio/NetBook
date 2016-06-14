package com.clilystudio.netbook.util;

import android.content.Context;
import android.widget.Toast;

final class ad implements Runnable {
    private /* synthetic */ Context a;
    private /* synthetic */ String b;
    private /* synthetic */ int c;

    ad(Context context, String string, int n) {
        this.a = context;
        this.b = string;
        this.c = n;
    }

    @Override
    public final void run() {
        Toast.makeText(this.a, this.b, this.c).show();
    }
}
