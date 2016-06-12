package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.widget.Toast;

final class i implements Runnable {

    private Context a;     // final access specifier removed

    i(Context Context1) {
        a = Context1;
    }

    public final void run() {
        Toast.makeText(a, (CharSequence) "Please copy all resources (res/) from SDK to your project!", 1).show();
    }
}
