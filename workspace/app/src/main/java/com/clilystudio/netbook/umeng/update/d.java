package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.widget.Toast;

final class d implements Runnable {

    private Context a;     // final access specifier removed

    d(Context Context1) {
        a = Context1;
    }

    public final void run() {
        Toast.makeText(a, b.e(a), 0).show();
    }
}
