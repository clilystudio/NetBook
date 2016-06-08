package com.clilystudio.netbook.util;

import android.content.Context;
import android.widget.Toast;

final class ad
        implements Runnable {
    ad(Context paramContext, String paramString, int paramInt) {
    }

    public final void run() {
        Toast.makeText(this.a, this.b, this.c).show();
    }
}

