package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

final class bD
        implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ ReaderMixActivity b;

    bD(ReaderMixActivity readerMixActivity, String string) {
        this.b = readerMixActivity;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        if (!this.a.equals(ReaderMixActivity.a(this.b))) {
            MyApplication.a().c(ReaderMixActivity.b(this.b));
            am.c((String) ReaderMixActivity.b(this.b), (int) 9);
            i.a().c(new v(1));
            ReaderMixActivity.a(this.b, ReaderMixActivity.f(this.b).get_id());
        }
        this.b.finish();
    }
}
