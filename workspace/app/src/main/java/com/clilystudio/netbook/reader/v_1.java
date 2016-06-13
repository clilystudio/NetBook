package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.view.View;

import com.clilystudio.netbook.util.p;

final class v
        implements View.OnClickListener {
    final /* synthetic */ o a;

    v(o o2) {
        this.a = o2;
    }

    @Override
    public final void onClick(View view) {
        o.a(this.a, false);
        new p(o.a(this.a)).a();
        new Handler().postDelayed(new w(this), 2000);
    }
}
