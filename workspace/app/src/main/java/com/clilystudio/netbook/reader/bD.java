package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

final class bD implements View$OnClickListener {

    private String a;
    private ReaderMixActivity b;
    bD(ReaderMixActivity ReaderMixActivity1, String String2) {
        b = ReaderMixActivity1;
        a = String2;
    }

    public final void onClick(View View1) {
        if (!a.equals(ReaderMixActivity.a(b))) {
            MyApplication.a().c(ReaderMixActivity.b(b));
            am.c(ReaderMixActivity.b(b), 9);
            i.a().c(new v(1));
            ReaderMixActivity.a(b, ReaderMixActivity.f(b).get_id());
        }
        b.finish();
    }
}
