package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.util.p;

final class v implements View$OnClickListener {

    o a;     // final access specifier removed

    v(o o1) {
        a = o1;
    }

    public final void onClick(View View1) {
        o.a(a, false);
        new p(o.a(a)).a();
        new Handler().postDelayed((Runnable) new w(this), 2000L);
    }
}
