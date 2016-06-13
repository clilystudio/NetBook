package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.event.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;

class f
        implements aa {
    private /* synthetic */ AudioBookPlayActivity a;

    f(AudioBookPlayActivity audioBookPlayActivity) {
        this.a = audioBookPlayActivity;
    }

    @Override
    public final void a() {
        as.b(AudioBookPlayActivity.a(this.a));
        as.i();
        i.a().c(new b());
        e.b(this.a);
        AudioBookPlayActivity.c(this.a);
    }
}
