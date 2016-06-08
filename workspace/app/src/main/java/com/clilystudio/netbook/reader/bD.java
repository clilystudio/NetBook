package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;
import com.squareup.a.b;

final class bD
        implements View.OnClickListener {
    bD(ReaderMixActivity paramReaderMixActivity, String paramString) {
    }

    public final void onClick(View paramView) {
        if (!this.a.equals(ReaderMixActivity.a(this.b))) {
            MyApplication.a().c(ReaderMixActivity.b(this.b));
            am.c(ReaderMixActivity.b(this.b), 9);
            i.a().c(new v(1));
            ReaderMixActivity.a(this.b, ReaderMixActivity.f(this.b).get_id());
        }
        this.b.finish();
    }
}

