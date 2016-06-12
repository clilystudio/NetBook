package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.widget.Toast;

final class h implements Runnable {

    private Context a;     // final access specifier removed

    h(Context Context1) {
        a = Context1;
    }

    public final void run() {
        Toast.makeText(a, (CharSequence) "Please add Permission in AndroidManifest!", 1).show();
    }
}
