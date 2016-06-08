package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.view.View;

import com.clilystudio.netbook.util.p;

final class v
        implements View.OnClickListener {
    v(o paramo) {
    }

    public final void onClick(View paramView) {
        o.a(this.a, false);
        new p(o.a(this.a)).a();
        new Handler().postDelayed(new w(this), 2000L);
    }
}

